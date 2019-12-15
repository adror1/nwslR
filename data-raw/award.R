library(tidyverse)
library(readxl)

#loading in spreadsheet
award <- read_excel("data-raw/player_awards.xlsx")
#adding person_ids
award <- left_join(awards, player)

#selecting only person_id, season, and award
award <- award %>%
  select(person_id, season, award)

#exporting final award info
usethis::use_data(award, overwrite = TRUE)

