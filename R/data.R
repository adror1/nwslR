#' Team stats for each season
#'
#' @docType data
#' @format A data frame with one row for each team in each season for which data is available (2016-2019) with statistics for team performance
#' \describe{
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{goals}{total number of goals scored}
#' \item{assists}{total number of assists}
#' \item{shots}{total number of shots}
#' \item{shots_on_goals}{total number of shot on goal}
#' \item{fouls_committed}{total number of fouls committed by team}
#' \item{fouls_suffered}{total number of time the team was fouled}
#' \item{offsides}{total number of offside calls}
#' \item{corner_kicks}{total number of corner kicks taken}
#' \item{games_played}{total number of games played}
#' \item{yellow_cards}{total number of yellow cards received}
#' \item{red_cards}{total number of red cards received}
#' \item{penalty_kick_goals}{total number of goals scored from penalty kicks}
#' \item{penality_kick_attempts}{total number of penalty kicks awarded}
#' \item{season}{season for which the statistics represent}
#' \item{wins}{number of games won}
#' \item{draws}{number of games drawn}
#' \item{losses}{number of games lost}
#'}
#'
#' @source \url{http://www.nwslsoccer.com/stats#teams}
#'

"team_stats_season"


#' Franchise information for the National Women's Soccer League (NWSL)
#'
#' @docType data
#' @format A data frame with one row for each team in each season for all seasons of the NWSL with information about each team in the league
#' \describe{
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{team_name}{name of team}
#' \item{assists}{home city of team}
#' \item{city}{home state of team}
#' \item{state}{total number of shot on goal}
#' \item{season}{season for which the team was active}
#' }
#'
#' @source \url{https://en.wikipedia.org/wiki/National_Women\%27s_Soccer_League}
#'

"franchise"

#' Stadium information for games played each season
#'
#' @docType data
#' @format A data frame with one row for each team in each season for all seasons with information regarding home stadiums and average attendance
#' \describe{
#' \item{team_id}{the id of team as they appear across all datasets in `nwslR`}
#' \item{pri_stadium_name}{name of primary home stadium}
#' \item{pri_stadium_alias}{if stadium was ever known by another name during the existence of the team, it is denoted here}
#' \item{pri_town}{town of primary home stadium}
#' \item{pri_state}{state of primary home stadium}
#' \item{pri_capacity}{seating capacity of primary home stadium}
#' \item{sec_stadium_name}{name of secondary home stadium (only if home games were ever played elsewhere during the season)}
#' \item{sec_stadium_alias}{if stadium was ever known by another name during the existence of the team, it is denoted here}
#' \item{sec_town}{town of secondary home stadium}
#' \item{sec_state}{state of secondary home stadium}
#' \item{sec_capacity}{seating capacity of secondary home stadium}
#' \item{avg_attendance}{average season home game attendance}
#' \item{season}{season for which the statistics represent}
#'}
#'
#' @source \url{https://en.wikipedia.org/wiki/List_of_National_Women\%27s_Soccer_League_stadiums}
#'

"stadium"

