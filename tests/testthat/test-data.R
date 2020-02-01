test_that("data correct", {
  expect_identical(game$home_team, na.omit(game$home_team))
  expect_identical(game$away_team, na.omit(game$away_team))
  expect_equal(ncol(player), 5)
  expect_s3_class(goalkeeper_season_stats, "data.frame")
  expect_s3_class(game$game_date, "Date")
  expect_equal(length(unique(franchise$team_id)), 12)
}
)
