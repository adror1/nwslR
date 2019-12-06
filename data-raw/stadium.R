## code to prepare `stadium` dataset goes here
library(readr)
library(dplyr)

stadium <- read_csv("data-raw/stadium.csv")

stadium <- stadium %>%
  rename(season = year)

usethis::use_data(stadium, overwrite = TRUE)
