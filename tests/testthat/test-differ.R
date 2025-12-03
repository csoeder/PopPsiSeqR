test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
#under construction
test_that("a thing is no different than itself",{

  test.gr <-  data.frame(seqnames = "chr2L", start = 10000208, end=10000208, width =1, strand = "*", name = 0, score = 1, treatment = "placeholder" ) %>% GenomicRanges::GRanges()

  expect_no_error(test.self.diff.gr <- subTractor(test.gr, test.gr, field = "score", treament_name = "treatment"))

  expect_equal(test.self.diff.gr$placeholder_minus_placeholder[[1]], 0)

})

