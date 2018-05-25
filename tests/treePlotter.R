library(geiger)
library(cardoonTools)
library(ggtree)

tree<-read.tree("~/Documents/arbor/arborCollections/sampleDatasets/anolis.phy")
table<-read.csv("~/Documents/arbor/arborCollections/sampleDatasets/anolis.csv")

td <- make.treedata(tree, table)

mtree<-td$phy
mtable<-data.matrix(td$dat)

mt<-max(branching.times(tree))

treeplot <- function(tr){
  p1<-ggtree(mtree)+ xlim(0, mt*2.0) + geom_tiplab(size=2, color="black", offset=mt*0.3)
  p2<-gheatmap(p1, mtable, offset=mt*0.05, width=mt*0.2, low="white", high="black", colnames_position = "top", font.size=2)
  # plot
  plot(p2)
}

treeplot(mtree)

file <- tempfile(fileext = ".svg")
svg(file=file)
treeplot(tree)
dev.off()

rr<-readLines(file)


treePlot = cardoonPlot(expression(treeplot(tree)), width=10, height=10, units="cm", res=100)
treePlot = treePlot$png