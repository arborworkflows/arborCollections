require(treeplyr)
require(geiger)

tr<-rtree(10)
dat<-sim.char(tr, 1.0, 3)[,1,]
colnames(dat)<-c("c1", "c2", "c3")

td <- make.treedata(tr, dat)
select(td, c1)
select(td, "c1")
