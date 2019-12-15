#loading libraries
library(tidyverse)
library(readr)
library(readxl)
library(fs)
library(snakecase)

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

#renaming percentage columns
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  rename(save_pct = `Save%`, cs_pct = `CS%`)

#converting to snake case
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  rename_all(.funs = to_any_case)

#converting team names to team codes
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  mutate(
    squad = case_when(
      squad == "Boston" | squad == "Boston Breakers" ~ "BOS",
      squad == "Chicago" | squad == "Chicago Red Stars" ~ "CHI",
      squad == "Kansas City" | squad == "FC Kansas City" ~ "KC",
      squad == "Houston" | squad == "Houston Dash" ~ "HOU",
      squad == "North Carolina" ~ "NC",
      squad == "Orlando" | squad == "Orlando Pride" ~ "ORL",
      squad == "Portland" | squad == "Portland Thorns FC" ~ "POR",
      squad == "Reign" | squad == "Seattle" ~ "SEA",
      squad == "Sky Blue" | squad == "Sky Blue FC" ~ "NJ",
      squad == "Utah" ~ "UTA",
      squad == "Washington" | squad == "Washington Spirit" ~ "WAS",
      squad == "Western New York Flash" ~ "WNY"
    ))


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
gk_card_stats <- fieldplayer_overall_season_stats %>%
  select(season, Player, Pos, CrdY, CrdR) %>%
  filter(Pos == "GK") %>%
  select(-Pos)
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  filter(Pos != "GK")

#creating person_id's
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  mutate(person_id = group_indices(., Player, Born, Nation))

#converting to snake case
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  rename_all(.funs = to_any_case)

#converting team names to team codes
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  mutate(
    squad = case_when(
      squad == "Boston" | squad == "Boston Breakers" ~ "BOS",
      squad == "Chicago" | squad == "Chicago Red Stars" ~ "CHI",
      squad == "Kansas City" | squad == "FC Kansas City" ~ "KC",
      squad == "Houston" | squad == "Houston Dash" ~ "HOU",
      squad == "North Carolina" ~ "NC",
      squad == "Orlando" | squad == "Orlando Pride" ~ "ORL",
      squad == "Portland" | squad == "Portland Thorns FC" ~ "POR",
      squad == "Reign" | squad == "Seattle" ~ "SEA",
      squad == "Sky Blue" | squad == "Sky Blue FC" ~ "NJ",
      squad == "Utah" ~ "UTA",
      squad == "Washington" | squad == "Washington Spirit" ~ "WAS",
      squad == "Western New York Flash" ~ "WNY"
    ))

#adding gk red and yellow card stats
goalkeeper_season_stats <- left_join(goalkeeper_season_stats, gk_card_stats,
                                     by = c("player" = "Player",
                                            "season"))

#removing player names
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  dplyr::select(-player)
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  select(-player)
fieldplayer_overall_season_stats <- fieldplayer_overall_season_stats %>%
  rename(team_id = squad)

#final case fix
goalkeeper_season_stats <- goalkeeper_season_stats %>%
  rename_all(.funs = to_any_case)

#reorder columns
goalkeeper_season_stats <- goalkeeper_season_stats[,c(18, 1:17, 19, 20)]
#need to fix duplicate rows.

#exporting final GK data
usethis::use_data(goalkeeper_season_stats, overwrite = TRUE)
#exporting final FP data
usethis::use_data(fieldplayer_overall_season_stats, overwrite = TRUE)
