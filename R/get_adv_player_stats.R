globalVariables(c("type", "value", "game_id", "status", "team_id", "link",
                  "stat", "firstName", "lastName", "full_name", "name_other",
                  "player_id", "match_name", "image_head", "nation", "pos",
                  "last_name", "shirt_number", "sub_position", "game_started",
                  "mins_played", "formation_place", "total_sub_off", "player_off_id", "player_on_id",
                  "position", "position_side"))


#pulls JSON files for each game with information regarding each game and returns a list
pull_boxscore <- function(game_id) {

  boxscore_link <- paste0("http://api.nwslsoccer.com/v2/games/", game_id, "/stats")
  boxscore <- fromJSON(boxscore_link)

  return(boxscore)
}

#formats row of data frame with pertinent information
#list of scores = the list object that is converted from the json file (aka pull_boxscore() output)
#vector_of_games = the data frame created from pull_game_links()

create_df_player <- function(boxscore, game_id) {

  #indexes into the list and pulls out the team stats tables
  home_df <- purrr::pluck(boxscore, game_id, "lineUp", "player", 1)
  home_df <- home_df %>%
    filter(stat != "NULL")
  home_stats <- map(home_df$stat, as.data.frame)
  home_stats_format <- map_dfr(home_stats, format_stats)
  home_df <- bind_cols(home_df, home_stats_format)


  away_df <- purrr::pluck(boxscore, game_id, "lineUp", "player", 2)
  away_df <- away_df %>%
    filter(stat != "NULL")
  away_stats <- map(away_df$stat, as.data.frame)
  away_stats_format <- map_dfr(away_stats, format_stats)
  away_df <- bind_cols(away_df, away_stats_format)


  #row for home team
  home_df <- home_df %>%
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
  away_df <- away_df %>%
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
  full_game_stat <- bind_rows(home_df, away_df)

  full_game_stat <- full_game_stat %>%
    mutate(full_name = paste(firstName, lastName, sep = " ")) %>%
    mutate(full_name = str_replace_all(full_name, "^ +", "")) %>%
    mutate(full_name = iconv(full_name, to = "ASCII//TRANSLIT"),
           full_name = str_replace_all(full_name, "\\W", ""))


  player_edit <- player %>%
    mutate(player = iconv(player, to = "ASCII//TRANSLIT"),
           player = str_replace_all(player, "\\W", ""),
           name_other = iconv(name_other, to = "ASCII//TRANSLIT"),
           name_other = str_replace_all(name_other, "\\W", ""),
           player = if_else(is.na(name_other), player, name_other))


  full_stats_id <- left_join(full_game_stat, player_edit, by = c("full_name" = "player"))

  full_stats_id <- full_stats_id %>%
    rename_all(.funs = to_any_case) %>%
    select(-player_id, -match_name, -stat, -image_head, -full_name, -nation, -pos, -name_other) %>%
    select(game_id:last_name, person_id, shirt_number, position, position_side, game_started,
           mins_played, formation_place, total_sub_off, player_off_id, player_on_id, everything())


  #returns two teams
  return(full_stats_id)
}

format_stats <- function(df) {
  df_formatted <- df %>% dplyr::select(type, value) %>%
    tidyr::pivot_wider(value, type)

  return(df_formatted)
}


#' Advanced player-level statistics for each game
#'
#' Scrapes NWSL website to pull player stats for each game. Returns a data frame with one row per player on each team
#' game ID (home and away) as well as over 200 different statistics
#'
#' Most variables are documented at the following link, but official documentation will be added to the pacakge soon: https://winsports.dayscript.com/docs/database/match_player_stats
#' @param game_id Unique game id from nwsl. Find these on the NWSL website (ex: https://www.nwslsoccer.com/game/washington-spirit-vs-sky-blue-2019-04-13) or in the `game` table.
#' @importFrom jsonlite fromJSON
#' @importFrom snakecase to_any_case
#' @import purrr
#' @import dplyr
#' @import stringr
#' @import tidyr
#' @export
get_adv_player_stats <- function(game_id) {

  season_request <- str_extract_all(game_id, "[[:digit:]]{4}")

  season_request <- as.numeric(season_request)

  #two error handling situations

  if(season_request > 2020 | season_request < 2016) {
    stop("Invalid Year. Please choose a game from between 2016-2020.")
  }

  if(game_id %in% c("chicago-red-stars-vs-north-carolina-courage-2017-09-03",
                    "houston-dash-vs-seattle-reign-2017-09-03",
                    "kansas-city-vs-sky-blue-2017-09-03")) {
    stop(paste0("This game, ", game_id, ", does not have available statistics."))
  }


  #pulls boxscore
  vector_boxscores <- pull_boxscore(game_id)

  #names list object according to game_id (more for troubleshooting than anything else)
  names(vector_boxscores) <- game_id

  #creates the df
  df_boxscore <- create_df_player(vector_boxscores, game_id)

  return(df_boxscore)

}

