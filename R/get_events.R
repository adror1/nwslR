#Functions for extracting shot on goal locations, shot locations, etc.
globalVariables(c("action", "assist_player_name", "assist_type", "shot_player_name", "shot_loc", "play_status",
                  "team", "minute", "period", "second", "time", "shot_type", "sog_loc", "goal", "shot", "own_goal", "sog"))

#scrapes play by play for given game id
pull_plays <- function(game_id) {

  play_link <- paste0("https://api.nwslsoccer.com/v2/games/", game_id, "/commentary")
  play_by_play <- fromJSON(play_link)
  play_by_play_pluck <- pluck(play_by_play, "result")
  play_by_play_df <- as.data.frame(play_by_play_pluck)
  play_by_play_df <- play_by_play_df %>%
    mutate(game_id = game_id)

  return(play_by_play_df)
}


#inputs scraped df and wrangles it into something useful
data_wrangling <- function(df) {

  #extract actions (kinda like a description of the play)
  df$action <- str_extract_all(df$comment,"\\..*")
  df$action <- str_replace(df$action,".","")
  df$action <- str_squish(df$action)

  #Blank actions is no data in the result.comment field
  for (i in 1:nrow(df)) {
    if (nchar(df$action[i])==0) {
      df$action[i] = df$comment[i]
    }
  }

  df <- df %>%
    filter(type == "goal" | type == "miss" | type == "attempt blocked" |
                       type == "attempt saved" | type == "penalty miss" | type == "penalty saved"|
                       type == "post" | type == 'own goal')

  # add a lot of columns, though there is some difficulty in extracting shots from the right side of the box, for some reason
  df <- df %>%
    mutate(assist_type=NA, shot_player_name=NA) %>%
    mutate(assist_player_name=str_extract(action, "Assisted by .*"),
           assist_type=str_extract(assist_player_name, "with .*"),
           assist_player_name=str_remove(assist_player_name, "with .*"),
           assist_type=ifelse(grepl("through ball", assist_type, fixed=TRUE)==TRUE, "through ball", str_remove(assist_type, "with a")),
           assist_type=str_replace(assist_type, "cross .*", "cross"),
           assist_type=str_remove(assist_type, "\\."),
           assist_type=str_squish(assist_type),
           action=ifelse(type=="post", comment, action),
           action=str_remove(action, "Assisted by .*"),
           action = ifelse(type == "own goal", str_extract(comment, "^([^.]+.)"), action),
           shot_player_name = sub("\\(.*", "", action),
           shot_player_name = str_remove(shot_player_name, "Penalty saved!"),
           shot_player_name = ifelse(type == 'own goal', str_extract(shot_player_name, "(?<=.by )([A-z ]*)(?=,*?)"), shot_player_name),
           shot_player_name = str_squish(shot_player_name),
           assist_player_name = str_remove(assist_player_name, "Assisted by"),
           assist_player_name = str_remove(assist_player_name, "\\."),
           assist_player_name = str_squish(assist_player_name),
           assist_player_name = str_remove(assist_player_name, " following a corner"),
           assist_player_name = str_remove(assist_player_name, " following a set piece situation"),
           assist_player_name = str_remove(assist_player_name, " following a fast break"),
           shot_type = str_extract(action,"left footed shot|right footed shot|header"),
           shot_loc = str_extract(action, "\\boutside the box\\b|\\bcentre of the box\\b|\\bleft side of the box\\b|
                                  \\bright side of the box\\b|\\bvery close range\\b|\\bmore than 35 yards\\b|\\bleft side of the six yard box\\b|
                                  \\bdifficult angle on the right\\b|\\bdifficult angle on the left\\b|\\bright side of the six yard box\\b|
                                  \\blong range on the right\\b|\\blong range on the left\\b|\\bconverts the penalty\\b"),
           shot_loc = str_replace(shot_loc, "right side of the six yard box","very close range"),
           shot_loc = str_replace(shot_loc, "left side of the six yard box","very close range"),
           shot_loc = str_replace(shot_loc, "long range on the left","outside the box"),
           shot_loc = str_replace(shot_loc, "difficult angle on the left","left side of the box"),
           shot_loc = ifelse(type=="penalty saved","penalty",
                             ifelse(type=="penalty miss", "penalty", shot_loc)),
           shot_loc = str_replace(shot_loc, "converts the penalty", "penalty"),
           shot_loc = ifelse(str_detect(action, "right side of the box") ==TRUE, "right side of the box", shot_loc),
           sog_loc = str_extract(comment, "\\btop right corner\\b|\\bcentre of the goal\\b|\\btop left corner\\b|\\bbottom left corner\\b|\\bbottom right corner\\b"),
           sog_loc = if_else(str_detect(comment, "misses") == TRUE, NA_character_, sog_loc),
           goal = ifelse(type=="goal", 1, 0),
           shot = ifelse(type != "own goal", 1, 0),
           sog = ifelse(!is.na(sog_loc), 1, 0),
           own_goal = ifelse(type == 'own goal', 1, 0),
           team = ifelse(type == 'own goal', str_extract(action, "(?<=, )([A-z ]*)"), str_extract(action, "(?<=\\()([A-z ]*)")),
           play_status_parse = str_extract(comment, "(?<= following a )([A-z ]*)"),
           play_status = case_when(play_status_parse == 'set piece situation' ~ 'set piece',
                                   play_status_parse == 'corner' ~ 'corner',
                                   play_status_parse == 'fast break' ~ 'fast break',
                                   is.na(play_status_parse) & shot_loc == 'penalty' ~ 'penalty',
                                   is.na(play_status_parse) & shot_loc != 'penalty' ~ 'open play'),
           play_status = ifelse(is.na(play_status), 'open play', play_status),
           team = case_when(str_detect(team, "Portland Thorns") ~ "POR",
                               str_detect(team, "Houston Dash") ~ "HOU",
                               str_detect(team, "Western New York Flash") ~ "WNY",
                               str_detect(team, "FC Kansas City") ~ "KC",
                               str_detect(team, "Seattle Reign") ~ "SEA",
                               str_detect(team, "Reign FC") ~ "SEA",
                               str_detect(team, "Chicago Red Stars") ~ "CHI",
                               str_detect(team, "Boston Breakers") ~ "BOS",
                               str_detect(team, "Orlando Pride") ~ "ORL",
                               str_detect(team, "Sky Blue") ~ "NJ",
                               str_detect(team, "Utah Royals") ~ "UTA",
                               str_detect(team, "North Carolina Courage") ~ "NC",
                               str_detect(team, "Washington Spirit") ~ "WAS",
                               str_detect(team, "OL Reign") ~ "RGN",
                               str_detect(team, "Kansas City") ~ "KC",
                               str_detect(team, "Racing Louisville") ~ "LOU",
                               str_detect(team, "Gotham FC") ~ "NJNY"
    )) %>%
    select(game_id, team, minute, period, second, time, play_status, type, shot_type,
           shot_player_name, assist_type, assist_player_name, shot_loc, sog_loc,
           goal, shot, sog, own_goal, action) %>%
    rename(shot_location = shot_loc,
           shot_on_goal_location = sog_loc,
           shot_on_goal = sog,
           result = type) %>%
    mutate(minute = as.numeric(minute),
           second = as.numeric(second),
           period = as.numeric(period)) %>%
    arrange(period, minute, second)

}

#' Advanced player-level statistics for each game
#'
#' Scrapes NWSL website to pull player stats for each game. Returns a data frame with one row per shooting action in a game, including own goals. More actions coming soon.
#'
#' @param game_id Unique game id from nwsl. Find these on the NWSL website (ex: https://www.nwslsoccer.com/game/washington-spirit-vs-sky-blue-2019-04-13) or in the `game` table.
#' @details The columns returned from the `get_events` function are as follows:
#' \itemize{
#' \item{"game_id"} - unique identifer for each game
#' \item{"team"} - team ID for the team that is involved in the event
#' \item{"minute"} - minute of play
#' \item{"period"} - period of play
#' \item{"second"} - second of play
#' \item{"time"} - time on match clock
#' \item{"play_status"} - state of game during event (i.e. open play, corner, set piece, etc.)
#' \item{"result"} - result of the shooting event (i.e. goal, attempted saved, miss, etc.)
#' \item{"shot_type"} - type of shot (i.e. left-footed, right-footed, header)
#' \item{"shot_player_name} - name of player who takes the shot
#' \item{"assist_type"} - type of assist, if applicable (i.e. through ball, cross, etc.)
#' \item{"assist_player_name"} - name of player who provides assist, if applicable
#' \item{"shot_location"} - location on the pitch of shot
#' \item{"shot_on_goal_location} - shot placement in goal, if applicable
#' \item{"goal"} - binary variable that denotes if action results in a goal
#' \item{"shot"} - binary variable that denotes if event is a shot
#' \item{"shot_on_goal"} - binary variable that denotes if action results in a shot on goal
#' \item{"own_goal} - binary variable that denotes if event is an own goal
#'\item{"action"} - full description of event
#' }
#' @importFrom jsonlite fromJSON
#' @import dplyr
#' @import stringr
#' @import purrr
#' @export

get_events <- function(game_id) {
  season_request <- str_extract_all(game_id, "[[:digit:]]{4}")

  season_request <- as.numeric(season_request)

  #two error handling situations

  if(season_request > 2021 | season_request < 2016) {
    stop("Invalid Year. Please choose a game from between 2016-2021.")
  }

  if(game_id %in% c("chicago-red-stars-vs-north-carolina-courage-2017-09-03",
                    "houston-dash-vs-seattle-reign-2017-09-03",
                    "kansas-city-vs-sky-blue-2017-09-03")) {
    stop(paste0("This game, ", game_id, ", does not have available statistics."))
  }

  #pulls boxscore
  scraped_df <- pull_plays(game_id)

  #creates the cleaned up df
  clean_df <- data_wrangling(scraped_df)
  #returns the df
  return(clean_df)

}
