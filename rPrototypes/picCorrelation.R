library(geiger)
library(aRbor)
table <- 
  read.csv("/home/lukeh/Documents/arborCollectionsWeb/assets/anolis.csv", row.names=1)

ind_variable<-"SVL"
dep_variable<-"awesomeness"
tree<-read.tree("/home/lukeh/Documents/arborCollectionsWeb/assets/anolis.phy")
plotPICs<-T

# Match tree and tip data

td<-make.treedata(phy, table)
phy<-td$phy

# get x and y data with names
# would be better to have an aRbor function that takes td directly?

x <- select_(td, ind_variable)$dat[[1]]
names(x)<-td$phy$tip.label

y <- select_(td, dep_variable)$dat[[1]]
names(y)<-td$phy$tip.label


# calculate independent contrasts

picX <- pic(x, tree)
picY <- pic(y, tree)

# run regression forced through the origin

res <- lm(picY~picX-1)
output <- anova(res)


# coerce into table
tableResults<-cbind(c(dep_variable, "Residuals"), output[,1:5])
colnames(tableResults)[1]<-"Effect"
# tableResults are the final results

if(plotPICs) {
  plot(picX, picY)
  abline(res)
}