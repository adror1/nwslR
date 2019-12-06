## code to prepare `team_stats_season` dataset goes here

library(jsonlite)
library(tidyverse)
library(snakecase)

#API URL to get team stats on the season level
team_stats_URL <- "https://api.nwsl.aetnd.com/data/stats/teams?season="

#all years that are available
years <- c(2016:2019)

#function that pulls the data in JSON format and then creates a dataframe with the necessary data
getData <- name <- function(year) {

  pull <- fromJSON(paste0(team_stats_URL, year))

  team_name <- pull[["response"]][["statistics"]][["team"]][["abbreviationName"]]
  team_info <- pull[["response"]][["statistics"]][["stat"]]
  team_year <- c(year)

  full_dataset <- cbind(team_name, team_info, team_year)
}

#maps over the years and then returns a df
team_data <- map_df(years, getData)

team_data_clean <- team_data %>%
  rename_all(.funs = to_any_case) %>%
  rename(team_id = team_name,
         season = team_year)
#adding team records (this wasn't scrapable at the time, but hopefully it is eventually?)
team_records <- data.frame(team_id = c("BOS", "BOS",
                                       "CHI", "CHI", "CHI", "CHI",
                                       "HOU", "HOU", "HOU", "HOU",
                                       "KC", "KC",
                                       "NC", "NC", "NC",
                                       "NJ" ,"NJ", "NJ", "NJ",
                                       "ORL", "ORL", "ORL", "ORL",
                                       "POR", "POR", "POR", "POR",
                                       "SEA", "SEA", "SEA", "SEA",
                                       "UTA", "UTA",
                                       "WAS", "WAS", "WAS", "WAS",
                                       "WNY"),
                           season = c(2016:2017,
                                      2016:2019,
                                      2016:2019,
                                      2016:2017,
                                      2017:2019,
                                      2016:2019,
                                      2016:2019,
                                      2016:2019,
                                      2016:2019,
                                      2018:2019,
                                      2016:2019,
                                      2016
                           ),
                           wins = c(3, 4,
                                    9, 11, 9, 14,
                                    6, 7, 9, 7,
                                    7, 8,
                                    16, 17, 15,
                                    7, 10, 1, 5,
                                    6, 11, 8, 4,
                                    12, 14, 12, 11,
                                    8, 9, 11, 10,
                                    9, 10,
                                    12, 5, 2, 9,
                                    9),
                           draws = c(2, 7,
                                     6, 6, 10, 2,
                                     4, 3, 5, 5,
                                     5, 7,
                                     1, 6, 4,
                                     5, 3, 6, 5,
                                     1, 7, 6, 4,
                                     5, 5, 6, 7,
                                     6, 7, 8, 8,
                                     8, 4,
                                     3, 4, 5, 7,
                                     5),
                           losses = c(15, 13,
                                      5, 7, 5, 8,
                                      10, 14, 10, 12,
                                      8, 9,
                                      7, 1, 5,
                                      8, 11, 17, 14,
                                      13, 6, 10, 16,
                                      3, 5, 6, 6,
                                      6, 8, 5, 6,
                                      7, 10,
                                      5, 15, 17, 8,
                                      6)
)

team_stats_season <- left_join(x = team_data_clean, team_records, by = c("season" = "season", "team_id" = "team_id"))

usethis::use_data(team_stats_season)
