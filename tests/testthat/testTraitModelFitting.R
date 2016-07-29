require(testthat)

source("../traitModelFitting.R")

table<-read.csv("../../sampleDataArbor/anolis.csv")
tree<-read.tree("../../sampleDataArbor/anolis.phy")


context("fitContinuous json")
test_that("Output is a list with the correct elements", {

  tree<-read.tree(text="((A:1.0, B:1.0):1.5, C:2.5);")
  table<-matrix(c(1.0, 2.0, 3.0), ncol=1)
  rownames(table)<-c("A", "B", "C")
  colnames(table)<-"x"
  column<-"x"
  model<-"BM"
  
  rr<-fitContinuous.json(table, tree, column, model)
  expect_that(length(rr), equals(3))
  expect_that(names(rr)[1], matches("treePlot"))
  expect_that(names(rr)[2], matches("result"))
  expect_that(rr[2]$result, is_a("phylo"))
  expect_that(names(rr)[3], matches("fit"))
  expect_that(rr[3], is_a("list"))
  expect_equal(rr[3]$fit$lnL, -3.76019, tolerance=1e-6)
  
})


context("fitDiscrete json")
test_that("Output is a list with the correct elements", {
  table<-read.csv("../../sampleDataArbor/anolis.csv")
  tree<-read.tree("../../sampleDataArbor/anolis.phy")
  column<-"ecomorph"
  model<-"ER"
  
  rr<-fitDiscrete.json(tree, table, column, model)
  expect_that(length(rr), equals(2))
  expect_that(names(rr)[1], matches("Q"))
  expect_that(names(rr)[2], matches("res"))
  expect_equal(as.numeric(rr[[1]][1,2]), -0.734343508006695, tolerance=1e-7)
  expect_equal(rr[[2]]$lnL, -108.8724, tolerance=1e-6)
  
})
