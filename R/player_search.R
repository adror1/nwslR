globalVariables(c("goalkeeper_season_stats", "fieldplayer_overall_season_stats", "player"))

#' Searches and returns player statistics based on name
#' @param name the player(s) name(s); can search for a last name, first name, or partial name
#' @param goalkeeper set to TRUE if the player(s) you are looking for is a goalkeeper, FALSE if they are a field player
#' @import dplyr
#' @import stringr
#' @export
#' @examples player_search("Harris", goalkeeper = TRUE)
player_search <- function(name, goalkeeper = FALSE) {
  if (goalkeeper == TRUE) {
    #joins the lookup table with the goalkeeper statistics
    player_results <- left_join(goalkeeper_season_stats, player)
    #filters the players based on the string entered by the user
    player_results <- player_results %>%
      filter(grepl(name, player_results$player, ignore.case = TRUE))
  }
  else if (goalkeeper == FALSE) {
    #joins the lookup table with the fieldplayer statistics
    player_results <- left_join(fieldplayer_overall_season_stats, player)
    #filters the players based on the string entered by the user
    player_results <- player_results %>%
      filter(grepl(name, player_results$player, ignore.case = TRUE))
  }
  return(player_results)
}
