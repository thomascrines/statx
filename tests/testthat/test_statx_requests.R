context("statx_requests")

test_that("statx_requests produces no warning", {
  skip_on_cran()
  expect_silent(statx_requests())
})
