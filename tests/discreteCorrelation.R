## discreteCorrelation script

library(geiger)
library(cardoonTools)
library(treeplyr)
library(aRbor)
library(diversitree)

tree<-read.tree("~/Documents/arbor/arborCollections/sampleDatasets/anolis.phy")
table<-read.csv("~/Downloads/temp.csv")
rownames(table)<-table[,1]
table<-table[,-1]

column1<-"fakeBinary1"
column2<-"fakeBinary2"


discreteCorrelation(tree, table, column1, column2, modelType="ER")

