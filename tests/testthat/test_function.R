test_that("functions correct", {
  expect_gt(nrow(player_search("é")), 0)
  expect_equal(nrow(player_search("Alex Morgan")), 7)
  expect_equal(nrow(player_search("Alexandra Morgan")), 0)
  expect_equal(nrow(player_search("Ashlyn Harris", goalkeeper = TRUE)), 7)
  expect_equal(nrow(get_adv_team_stats(2018)),
               na.omit(nrow(get_adv_team_stats(2018))))
  expect_error(get_adv_team_stats(2012),
               "Invalid Year. Please choose a year between 2016-2019.")
  expect_equal(nrow(avg_gk_stats()), nrow(player %>%
                 filter(pos == "GK")))
  expect_equal(nrow(avg_field_stats()), nrow(player %>%
                                               filter(pos != "GK")))
}
)
