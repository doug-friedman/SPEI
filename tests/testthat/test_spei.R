context("spei")

data(wichita)
wichita$PET <- thornthwaite(wichita$TMED,37.6475)

test_that("example w/ 1 month", {
  spei1MoOut = readRDS("data/spei_1mo_Out.rds")
  expect_equal(spei1MoOut, 
               spei(wichita$PRCP-wichita$PET,1)
  )
})

test_that("example w/ 12 months", {
  spei12MoOut = readRDS("data/spei_12mo_Out.rds")
  expect_equal(spei12MoOut, 
               spei(wichita$PRCP-wichita$PET,12)
  )
})
    