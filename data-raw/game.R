##code to scrape all games and their winners from the NWSL website and creates the game_id data frame
##meant to be used to join data sets for (2015-2019)

library(jsonlite)
library(tidyverse)

#all seasons
year <- c(2015:2019)

#creates data frame of links/game_ids
pull_game_links <- function(url) {

  link <- fromJSON(url)
  url_links <- as.data.frame(link[["result"]]$slug)

}

#pulls JSON files for each game with information regarding each game and returns a list
pull_boxscore <- function(game_id) {

  boxscore_link <- paste0("https://api.nwsl.aetnd.com/v2/games/", game_id, "/stats")
  boxscore <- fromJSON(boxscore_link)

}

#formats row of data frame with pertinent information
#list of scores = the list object that is converted from the json file (aka pull_boxscore() output)
#vector_of_games = the data frame created from pull_game_links()

create_df <- function(list_of_stats, vector_of_games) {

  #indexes into list and pulls out the game result and converts to data frame
  results <- pluck(list_of_stats, "result", "matchDetails", "scores", "total") %>%
    as.data.frame()

  #data cleaning and parsing the teams from the game_id
  results <- results %>%
    mutate(game_id = vector_of_games,
           home_team = str_extract(game_id, "(?<=^)(.+?)(?=-vs)"),
           away_team = str_extract(game_id, "(?<=vs-)(.*)(?=-[[:digit:]]{4})")) %>%
    mutate(home_team = case_when(str_detect(home_team, "portland-thorns") ~ "POR",
                            str_detect(home_team, "houston-dash") ~ "HOU",
                            str_detect(home_team, "western-new-york-flash") ~ "WNY",
                            str_detect(home_team, "kansas-city") ~ "KC",
                            str_detect(home_team, "seattle-reign") ~ "SEA",
                            str_detect(home_team, "reign") ~ "SEA",
                            str_detect(home_team, "chicago-red-stars") ~ "CHI",
                            str_detect(home_team, "boston-breakers") ~ "BOS",
                            str_detect(home_team, "orlando-pride") ~ "ORL",
                            str_detect(home_team, "sky-blue") ~ "NJ",
                            str_detect(home_team, "utah-royals") ~ "UTA",
                            str_detect(home_team, "north-carolina-courage") ~ "NC",
                            str_detect(home_team, "washington-spirit") ~ "WAS"
    ),
    away_team = case_when(str_detect(away_team, "portland-thorns") ~ "POR",
                          str_detect(away_team, "houston-dash") ~ "HOU",
                          str_detect(away_team, "western-new-york-flash") ~ "WNY",
                          str_detect(away_team, "kansas-city") ~ "KC",
                          str_detect(away_team, "seattle-reign") ~ "SEA",
                          str_detect(away_team, "reign") ~ "SEA",
                          str_detect(away_team, "chicago-red-stars") ~ "CHI",
                          str_detect(away_team, "boston-breakers") ~ "BOS",
                          str_detect(away_team, "orlando-pride") ~ "ORL",
                          str_detect(away_team, "sky-blue") ~ "NJ",
                          str_detect(away_team, "utah-royals") ~ "UTA",
                          str_detect(away_team, "north-carolina-courage") ~ "NC",
                          str_detect(away_team, "washington-spirit") ~ "WAS"
    )) %>%
    rename(home_pts = home,
           away_pts = away) %>%
    mutate(winner = case_when(home_pts > away_pts ~ home_team,
                              away_pts > home_pts ~ away_team)) %>%
    mutate(game_date = as.Date(str_extract(game_id, "([[:digit:]]{4})-([[:digit:]]{2})-([[:digit:]]{2})"))) %>%
    select(game_id, game_date, home_team, away_team, everything())


  #returns the row
  return(results)
}

#main function
get_results <- function(year) {

  #creates url to access all games in a given year
  game_url <- paste0("https://api.nwsl.aetnd.com/v2/games?limit=150&seasonName=", year,
                     "&project[]=matchInfo.id&project[]=matchInfo.contestant&project[]=matchInfo.date&project[]=matchInfo.time&project[]=liveData.matchDetails.winner&project[]=liveData.matchDetails.matchStatus&project[]=liveData.matchDetails.matchTime&project[]=liveData.matchDetails.periodId&project[]=liveData.matchDetails.scores&project[]=slug")

  #gets all game IDs for a given year
  urls_for_boxscores <- pull_game_links(game_url)

  urls_for_boxscores <- urls_for_boxscores %>%
    rename(slug = `link[["result"]]$slug`)

  #game IDs become a vector
  vector_boxscores <- as.vector(urls_for_boxscores$slug)

  #pulls boxscores for all game IDs and returns a list of list
  boxscores <- map(vector_boxscores, pull_boxscore)

  #names the list according to the game_ids
  names(boxscores) <- vector_boxscores

  #returns points scored and winners for every game played that year as a df
  results_df <- map2_df(boxscores, vector_boxscores, create_df)

  #returns df
  return(results_df)
}

#creates df of all game_ids with information for games played 2016-2019
game <- map_df(year, get_results)


usethis::use_data(game, overwrite = TRUE)
