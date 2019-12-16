globalVariables(c("type", "value", "game_id", "status", "team_id", "link", "result", "slug"))

#these are helper functions for the scraper

#creates data frame of links/game_ids
pull_game_links <- function(url) {

  link <- fromJSON(url)
  url_links <- link[["result"]][["slug"]]

  url_links <- as.data.frame(url_links)

  url_links <- url_links %>%
    mutate(url_links = as.character(url_links))

  return(url_links)
}

#pulls JSON files for each game with information regarding each game and returns a list
pull_boxscore <- function(game_id) {

  boxscore_link <- paste0("https://api.nwsl.aetnd.com/v2/games/", game_id, "/stats")
  boxscore <- fromJSON(boxscore_link)

  return(boxscore)
}

#formats row of data frame with pertinent information
#list of scores = the list object that is converted from the json file (aka pull_boxscore() output)
#vector_of_games = the data frame created from pull_game_links()

create_df <- function(list_of_scores, vector_of_games) {

#indexes into the list and pulls out the team stats tables
  home_df_stats <- purrr::pluck(list_of_scores, "result", "lineUp", "stat", 1)
  away_df_stats <- purrr::pluck(list_of_scores, "result", "lineUp", "stat", 2)

#row for home team
  home_df_stats <- home_df_stats %>%
    dplyr::select(type, value) %>%
    tidyr::pivot_wider(value, type) %>%
    mutate(game_id = vector_of_games,
           status = "home",
           team_id = str_extract(game_id, "(?<=^)(.+?)(?=-vs)")) %>%
    mutate(team_id = case_when(str_detect(team_id, "portland-thorns") ~ "POR",
                            str_detect(team_id, "houston-dash") ~ "HOU",
                            str_detect(team_id, "western-new-york-flash") ~ "WNY",
                            str_detect(team_id, "kansas-city") ~ "KC",
                            str_detect(team_id, "seattle-reign") ~ "SEA",
                            str_detect(team_id, "reign") ~ "SEA",
                            str_detect(team_id, "chicago-red-stars") ~ "CHI",
                            str_detect(team_id, "boston-breakers") ~ "BOS",
                            str_detect(team_id, "orlando-pride") ~ "ORL",
                            str_detect(team_id, "sky-blue") ~ "NJ",
                            str_detect(team_id, "utah-royals") ~ "UTA",
                            str_detect(team_id, "north-carolina-courage") ~ "NC",
                            str_detect(team_id, "washington-spirit") ~ "WAS"
                            )) %>%
  select(game_id, status, team_id, everything())

#row for away team
  away_df_stats <- away_df_stats %>%
    select(type, value) %>%
    pivot_wider(value, type) %>%
    mutate(game_id = vector_of_games,
           status = "away",
           team_id = str_extract(game_id, "(?<=vs-)(.*)(?=-[[:digit:]]{4})")) %>%
    mutate(team_id = case_when(str_detect(team_id, "portland-thorns") ~ "POR",
                            str_detect(team_id, "houston-dash") ~ "HOU",
                            str_detect(team_id, "western-new-york-flash") ~ "WNY",
                            str_detect(team_id, "kansas-city") ~ "KC",
                            str_detect(team_id, "seattle-reign") ~ "SEA",
                            str_detect(team_id, "reign") ~ "SEA",
                            str_detect(team_id, "chicago-red-stars") ~ "CHI",
                            str_detect(team_id, "boston-breakers") ~ "BOS",
                            str_detect(team_id, "orlando-pride") ~ "ORL",
                            str_detect(team_id, "sky-blue") ~ "NJ",
                            str_detect(team_id, "utah-royals") ~ "UTA",
                            str_detect(team_id, "north-carolina-courage") ~ "NC",
                            str_detect(team_id, "washington-spirit") ~ "WAS"
    )) %>%
    select(game_id, status, team_id, everything())

  #combines the two rows and does some cleaning
  full_game_stat <- bind_rows(home_df_stats, away_df_stats) %>%
    rename_all(.funs = to_any_case) %>%
    mutate_at(vars(-game_id, -status, -team_id), ~as.numeric(.))

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
#' @export
get_adv_team_stats <- function(year) {

if(year > 2019 | year < 2016){
  stop("Invalid Year. Please choose a year between 2016-2019.")
}
  #creates url to access all games in a given year
  game_url <- paste0("https://api.nwsl.aetnd.com/v2/games?limit=150&seasonName=", year,
                     "&project[]=matchInfo.id&project[]=matchInfo.contestant&project[]=matchInfo.date&project[]=matchInfo.time&project[]=liveData.matchDetails.winner&project[]=liveData.matchDetails.matchStatus&project[]=liveData.matchDetails.matchTime&project[]=liveData.matchDetails.periodId&project[]=liveData.matchDetails.scores&project[]=slug")
  #gets all game IDs for a given year
  urls_for_boxscores <- pull_game_links(game_url)

  #removes the three games in 2017 that do not have team stats
  if(year == 2017){

    #game IDs become a vector
    vector_boxscores <- as.vector(urls_for_boxscores$url_links)

    #removes problem games
    vector_boxscores <- vector_boxscores[!vector_boxscores %in% c("chicago-red-stars-vs-north-carolina-courage-2017-09-03",
                                                                  "houston-dash-vs-seattle-reign-2017-09-03",
                                                                  "kansas-city-vs-sky-blue-2017-09-03")]

    #pulls boxscores for all game IDs and returns a list of lists
    boxscores <- map(vector_boxscores, pull_boxscore)

    #names the list according to the game ids
    names(boxscores) <- vector_boxscores

    #creates data frame
    team_boxscore <- map2_df(boxscores, vector_boxscores, create_df)

    #removes NA values
    team_boxscore[is.na(team_boxscore)] <- 0

  } else {
    #same as above, but does not remove any games
    vector_boxscores <- as.vector(urls_for_boxscores$url_links)

    boxscores <- map(vector_boxscores, pull_boxscore)

    names(boxscores) <- vector_boxscores

    team_boxscore <- map2_df(boxscores, vector_boxscores, create_df)

    team_boxscore[is.na(team_boxscore)] <- 0

  }

  return(team_boxscore)
}
