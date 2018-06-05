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


res<-discreteCorrelation(tree, table, column1, column2, modelType="ER")
dcResultTable<-data.frame(lrStat=res[1,2], lrDF=res[2,2], lrPVal=res[3,2], qA= res[4,2], qB=res[5,2], qA_B1= res[6,2], qA_B2=res[7,2], qB_A1 =res[8,2], qB_A2=res[9,2])

require(phytools)
x<-table[,column1]
y<-table[,column2]
names(x)<-rownames(table)
names(y)<-rownames(table)

ff<-fitPagel(tree, x, y, model="ER")
pdf("~/test.pdf")
plot(ff)
dev.off()
