#these are helper functions for the scraper

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

create_df <- function(list_of_scores, vector_of_games) {

#indexes into the list and pulls out the team stats tables
  home_df_stats <- pluck(list_of_scores, "result", "lineUp", "stat", 1)
  away_df_stats <- pluck(list_of_scores, "result", "lineUp", "stat", 2)

#row for home team
  home_df_stats <- home_df_stats %>%
    select(type, value) %>%
    pivot_wider(value, type) %>%
    mutate(game_id = vector_of_games,
           status = "home",
           team = str_extract(game_id, "(?<=^)(.+?)(?=-vs)")) %>%
    mutate(team = case_when(str_detect(team, "portland-thorns") ~ "POR",
                            str_detect(team, "houston-dash") ~ "HOU",
                            str_detect(team, "western-new-york-flash") ~ "WNY",
                            str_detect(team, "kansas-city") ~ "KC",
                            str_detect(team, "seattle-reign") ~ "SEA",
                            str_detect(team, "reign") ~ "SEA",
                            str_detect(team, "chicago-red-stars") ~ "CHI",
                            str_detect(team, "boston-breakers") ~ "BOS",
                            str_detect(team, "orlando-pride") ~ "ORL",
                            str_detect(team, "sky-blue") ~ "NJ",
                            str_detect(team, "utah-royals") ~ "UTA",
                            str_detect(team, "north-carolina-courage") ~ "NC",
                            str_detect(team, "washington-spirit") ~ "WAS"
                            )) %>%
  select(game_id, status, team, everything())


#row for away team
  away_df_stats <- away_df_stats %>%
    select(type, value) %>%
    pivot_wider(value, type) %>%
    mutate(game_id = vector_of_games,
           status = "away",
           team = str_extract(game_id, "(?<=vs-)(.*)(?=-[[:digit:]]{4})")) %>%
    mutate(team = case_when(str_detect(team, "portland-thorns") ~ "POR",
                            str_detect(team, "houston-dash") ~ "HOU",
                            str_detect(team, "western-new-york-flash") ~ "WNY",
                            str_detect(team, "kansas-city") ~ "KC",
                            str_detect(team, "seattle-reign") ~ "SEA",
                            str_detect(team, "reign") ~ "SEA",
                            str_detect(team, "chicago-red-stars") ~ "CHI",
                            str_detect(team, "boston-breakers") ~ "BOS",
                            str_detect(team, "orlando-pride") ~ "ORL",
                            str_detect(team, "sky-blue") ~ "NJ",
                            str_detect(team, "utah-royals") ~ "UTA",
                            str_detect(team, "north-carolina-courage") ~ "NC",
                            str_detect(team, "washington-spirit") ~ "WAS"
    )) %>%
    select(game_id, status, team, everything())

  #combines the two rows and does some cleaning
  full_game_stat <- bind_rows(home_df_stats, away_df_stats) %>%
    rename_all(.funs = to_any_case) %>%
    mutate_all(~replace(., is.na(.), 0))

  #returns two rows
  return(full_game_stat)
}

#' Scrapes NWSL website to pull team stats for each game. Returns a data frame with two rows for each
#' game ID (home and away) as well as over 200 different statistics
#' @param year year between 2016-2019
#' @importFrom jsonlite fromJSON
#' @importFrom snakecase to_any_case
#' @import purrr
#' @import dplyr
#' @import stringr
#' @import tidyr
#' @import tidyverse
#' @import snakecase
#' @export
get_adv_team_stats <- function(year) {

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


  team_boxscore <- map2_df(boxscores, vector_boxscores, create_df)


  return(team_boxscore)
}

