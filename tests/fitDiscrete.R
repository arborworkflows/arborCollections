

## fitDiscrete script
library(aRbor)
library(geiger)
library(cardoonTools)
library(treeplyr)


tree<-read.tree("~/Documents/arbor/arborCollections/sampleDatasets/anolis.phy")
table<-read.csv("~/Documents/arbor/arborCollections/sampleDatasets/anolis.csv")
column<-"ecomorph"
model<-"ER"

rownames(table)<-table[,1]

td <- treedata(tree, table)
o <- fitDiscrete(td$phy, td$dat[,column], model=model)

res = data.frame(lnL = o$opt$lnL, aic = o$opt$aic, aicc = o$opt$aicc, k = o$opt$k)
Q <- geiger:::.Qmatrix.from.gfit(o)
Q<-cbind(rownames(Q), Q)
