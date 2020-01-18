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
         Round = as.numeric(gsub("[^0-9]","",Round)),
         `NWSL Team` = gsub("\\[.+\\]","",`NWSL Team`)) %>%
  rename(nationality = "Nat.",
         position = "Pos.",
         team_name = "NWSL Team") %>%
  janitor::clean_names("lower_camel") %>%
  select(year, everything(),-note)

# remove brackets from team names

draftpicks <- draftpicks %>%
  mutate(nwslTeam = gsub("\\[.+\\]","",nwslTeam)) %>%
  rename(team_name = nwslTeam)

#exporting final draft data
usethis::use_data(draftpicks, overwrite = TRUE)


# Join with Player IDs ----------------------------------------------------

load("data/player.rda")

withID <- draftpicks %>%
  left_join(select(player, player,person_id), by = "player")

potentialMatches <- withID %>%
  filter(is.na(person_id),
         year != max(year)) %>%
  transmute(player, nationality,position,
            last = stringr::str_extract(player,"[A-Z]\\w+$")) %>%
  left_join(player %>% mutate(last = stringr::str_extract(player,"[A-Z]\\w+$")), by = "last", suffix = c(".draft",".id"))

potentialMatches %>%
  filter(!is.na(player.id)) %>%
  select(-last)

draftpicks <- withID %>%
  mutate(person_id = case_when(player == "Lindsi Lisonbee Cutshall" ~ 309,
                            player == "Kathryn Williamson" ~ 233,
                            player == "Kimberly DeCesare" ~ 272,
                            player == "Samantha Mewis" ~ 441,
                            player == "Cheyna Williams" ~ 93,
                            player == "Janelle Flaws" ~ 195,
                            player == "Sammy Jo Prudhomme" ~ 10043,
                            player == "CeCe Kizer" ~ 88,
                            player == "Betsy Brandon" ~ 141,
                            TRUE ~ person_id))

usethis::use_data(draftpicks,overwrite = T)

