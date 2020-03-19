globalVariables(c("type", "value", "game_id", "status", "team_id", "link"))


#pulls JSON files for each game with information regarding each game and returns a list
pull_boxscore <- function(game_id) {

  boxscore_link <- paste0("http://api.nwslsoccer.com/v2/games/", game_id, "/stats")
  boxscore <- fromJSON(boxscore_link)

  return(boxscore)
}

#formats row of data frame with pertinent information
#boxscore = the list object that is converted from the json file (aka pull_boxscore() output)
#game_id =  unique game id as string

create_df_team <- function(boxscore, game_id) {

  #indexes into the list and pulls out the team stats tables
  home_df_stats <- purrr::pluck(boxscore, game_id, "lineUp", "stat", 1)
  away_df_stats <- purrr::pluck(boxscore, game_id, "lineUp", "stat", 2)

  #row for home team
  home_df_stats <- home_df_stats %>%
    dplyr::select(type, value) %>%
    tidyr::pivot_wider(value, type) %>%
    mutate(game_id = game_id,
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
    mutate(game_id = game_id,
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

#' Advanced team-level statistics by game
#'
#' Scrapes NWSL website to pull team stats for each game. Returns a data frame with two rows for each
#' game ID (home and away) as well as up to 200 different statistics depending on the game
#'
#' To see variable documentation, please see the static dataset `adv_team_stats.` Variable documentation will be added to the function soon.
#'
#' @param game_id Unique game id from nwsl. Find these on the NWSL website (ex: https://www.nwslsoccer.com/game/washington-spirit-vs-sky-blue-2019-04-13) or in the `game` table.
#' @importFrom jsonlite fromJSON
#' @importFrom snakecase to_any_case
#' @import purrr
#' @import dplyr
#' @import stringr
#' @import tidyr
#' @export
get_adv_team_stats <- function(game_id) {

  season_request <- str_extract_all(game_id, "[[:digit:]]{4}")

  season_request <- as.numeric(season_request)

  #two error handling situations

  if(season_request > 2019 | season_request < 2016) {
    stop("Invalid Year. Please choose a game from between 2016-2019.")
  }

  if(game_id %in% c("chicago-red-stars-vs-north-carolina-courage-2017-09-03",
                  "houston-dash-vs-seattle-reign-2017-09-03",
                  "kansas-city-vs-sky-blue-2017-09-03")) {
    stop("This game does not have available statistics.")
  }


    #pulls boxscore
    vector_boxscores <- pull_boxscore(game_id)

    #names list object according to game_id (more for troubleshooting than anything else)
    names(vector_boxscores) <- game_id

    #creates the df
    df_boxscore <- create_df_team(vector_boxscores, game_id)

  #returns the df
  return(df_boxscore)
}

