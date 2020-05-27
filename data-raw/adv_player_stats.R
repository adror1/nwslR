library(tidyverse)


player_stats <- read_csv("data-raw/adv_player_stats.csv")


player_stats_clean <- player_stats %>%
  select(-player_id, -match_name, -full_name, -nation, -pos) %>%
  select(game_id:last_name, person_id, shirt_number, position, position_side, game_started,
         mins_played, formation_place, total_sub_on, total_sub_off, player_off_id, player_on_id, everything())

adv_player_stats <- player_stats_clean


usethis::use_data(adv_player_stats, overwrite = TRUE)
