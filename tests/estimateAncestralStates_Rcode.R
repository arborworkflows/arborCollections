    ##"script": "
library(cardoonTools)
require(aRbor)


td <- make.treedata(tree, table)
td1 <- select_(td, column)
if(type=="continuous") td1 <- checkNumeric(td1)
if(type=="discrete") td1 <- checkFactor(td1)

output <- aceArbor(td1, charType=type, aceType=method)


TH <- max(branching.times(td$phy))
    
# plot and wrap the result in a PNG for output on the webpage
treePlot <- cardoonPlot(expression(plot(output, label.offset=0.05*TH)), width=1000, height=1000, res=100)
treePlot <- treePlot$png

res <- output[[1]]    
nodeLabels<-1:td1$phy$Nnode + length(td1$phy$tip.label)
res<-cbind(nodeLabels, res)"