# tests for plosabstract fxn in rplos
context("plosabstract")

test_that("plosabstract returns the correct dimensioned data.frame", {
	skip_on_cran()

	expect_equal(
	  NCOL(plosabstract(q = 'drosophila', fl='abstract,id', limit=10)$data), 2)
	Sys.sleep(6)
	expect_equal(
	  NROW(plosabstract(q = 'drosophila', fl='abstract', limit=5)$data), 5)
	Sys.sleep(6)
})

test_that("plosabstract returns the correct class", {
	skip_on_cran()

	expect_is(plosabstract(q = 'drosophila', fl='author', limit = 5)$data,
	          "data.frame")
	Sys.sleep(6)
	expect_is(plosabstract(q = 'Jones', fl='author', limit = 5)$data[1,1],
	          "tbl_df")
})
