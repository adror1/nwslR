library(rvest)
library(dplyr)


url <- "https://en.wikipedia.org/wiki/%i_NWSL_College_Draft"

links <- purrr::map_chr(seq(2013,2020), ~sprintf(url,.))

scrapeDraft <- function(link) {
  page <- read_html(link)

  draftHTML <- page %>%
    html_node("table.sortable")

  draftDF <- html_table(draftHTML)

  draftDF["Nat."] <- draftHTML %>%
    html_nodes("img") %>%
    html_attr("alt")

  draftDF["Year"] <- regmatches(link, regexpr("\\d{4}",link))

  return(draftDF)
}


draftpicks <- purrr::map_dfr(links, scrapeDraft)

draftpicks <- draftpicks %>%
  mutate(`Previous Team` = gsub("(?<=[A-z]{2})([A-z])([A-Z])\\B","\\1, \\2",
                                `Previous Team`, perl=T),
         Notes = na_if(coalesce(Notes,Note),""),
         Round = as.numeric(gsub("[^0-9]","",Round))) %>%
  rename(nationality = "Nat.",
         position = "Pos.") %>%
  janitor::clean_names("lower_camel") %>%
  select(year, everything(),-note)

#exporting final draft data
usethis::use_data(draftpicks, overwrite = TRUE)
