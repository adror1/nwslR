library(readr)

franchise <- read_csv("data-raw/franchise.csv")

usethis::use_data(franchise)
