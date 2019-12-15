#loading libraries
library(tidyverse)
library(readr)
library(readxl)
library(fs)
library(snakecase)

##loading in field player stats

#vector of field player filenames
fieldfiles <- fs::dir_ls("data-raw", regexp = 'fieldplayers_overall_season')

#reading in all field player files
fp_overall_season_stats <- map(fieldfiles, read_xlsx)

#creating a single data frame of all seasons
fp_overall_season_stats <- bind_rows(fp_overall_season_stats, .id = "season")

#identifying the season
fieldplayer_overall_season_stats <- fp_overall_season_stats %>%
  mutate(season = str_extract(season, "[^_]+(?=\\.xlsx$)"))

#correcting the nation column
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  mutate(Nation = str_extract(Nation, "\\s(.*)"))

#removing unneccesary columns
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  select(-Rk)

#removing keepers
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  filter(Pos != "GK")

#creating person_id's
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  mutate(person_id = group_indices(., Player, Born, Nation))

player_ids <- fieldplayer_overall_season_stats %>%
  select(person_id, Player, Nation, Pos) %>%
  unique()

##loading in goalkeeper stats

#vector of goalkeeper filenames
keeperfiles <- fs::dir_ls("data-raw", regexp = 'goalkeepers_season')

#reading in all keeper files
goalkeeper_season_stats <- map(keeperfiles, read_xlsx)

#creating a single data frame of all seasons
goalkeeper_season_stats <- bind_rows(goalkeeper_season_stats, .id = "season")

#identifying the season
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  mutate(season = str_extract(season, "[^_]+(?=\\.xlsx$)"))

#correcting the nation column
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  mutate(Nation = str_extract(Nation, "\\s(.*)"))

#removing unneccesary columns
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  select(-Rk, -Matches)

#filtering to only include keepers
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  filter(Pos == "GK")

#creating player ids
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  mutate(person_id = 10000 + group_indices(., Player, Nation))

gk_player_ids <- goalkeeper_season_stats %>%
  select(person_id, Player, Nation, Pos) %>%
  unique()
player_ids <- rbind(player_ids, gk_player_ids)

#converting to snake case
player_ids <- player_ids %>%
  rename_all(.funs = to_any_case)
player <- player_ids

#exporting final player info
usethis::use_data(player, overwrite = TRUE)
