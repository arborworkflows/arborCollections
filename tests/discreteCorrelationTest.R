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


## discreteCorrelation script

library(cardoonTools)
library(treeplyr)
library(aRbor)
require(phytools)

modelType="ER"


td <- make.treedata(tree, table)

td1 <- select(td, column1, column2)

# this changes the discrete data to 1:n and remembers the original charStates
datA<-as.factor(td1[[column1]])
charStatesA<-levels(datA)
kA<-nlevels(datA)


datB<-as.factor(td1[[column2]])
charStatesB<-levels(datB)
kB<-nlevels(datB)

if(kA != 2 | kB != 2) stop("Only 2-state characters currently supported")


ff<-fitPagel(td1$phy, datA, datB, model=modelType)


if(modelType=="ER" | modelType=="SYM") {degf <- 2} else if(modelType=="ARD") {degf <- 4}
dcResultTable<-data.frame(lrStat=ff$lik.ratio, lrDF=degf, lrPVal=ff$P)

q_ind <- ff$independent.Q
q_dep <- ff$dependent.Q

# plot and wrap the result in a PNG for output on the webpage
discreteCorPlot <- cardoonPlot(expression(plot(ff)), width=1000, height=16*ntips, res=100)$png






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
