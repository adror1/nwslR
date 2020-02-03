library(readr)
library(dplyr)
library(stringr)

adv_team_stats <- read_csv("data-raw/adv_team_stats.csv")

adv_team_stats <- adv_team_stats %>%
  mutate(season = str_extract_all(game_id, "[0-9]{4}")) %>%
  rename(team_id = team) %>%
  select(game_id, season, everything())

usethis::use_data(adv_team_stats, overwrite = TRUE)
