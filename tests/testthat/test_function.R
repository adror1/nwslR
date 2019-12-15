test_that("functions correct", {
  expect_gt(nrow(player_search("é")), 0)
  expect_equal(nrow(player_search("Alex Morgan")), 7)
  expect_equal(nrow(player_search("Alexandra Morgan")), 0)
  expect_equal(nrow(player_search("Ashlyn Harris", goalkeeper = TRUE)), 7)
}
)
