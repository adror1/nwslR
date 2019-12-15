test_that("data correct", {
  expect_identical(game$home_team, na.omit(game$home_team))
  expect_identical(game$away_team, na.omit(game$away_team))
  expect_equal(ncol(player), 4)
  expect_s3_class(goalkeeper_season_stats, "data.frame")
}
)
