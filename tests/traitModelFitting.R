fitContinuous.json<-function(table,tree,column,model)
{

## fitContinuous script
library(aRbor)
library(geiger)
library(cardoonTools)

td <- make.treedata(tree, table)
td <- checkNumeric(td)
valid.numeric <- which(colnames(td$dat)==column)
if(length(valid.numeric)==0){
  stop("The supplied column is not present, or is not a valid continuous trait")
}
td <- select(td, valid.numeric)

o <- fitContinuous(td$phy, td$dat, model=model, SE=0)
opt = o$opt

if (model == "OU") {
  fit=list(z0.param=opt$z0, sigsq.param=opt$sigsq, alpha.param=opt$alpha, lnL=opt$lnL, AIC=opt$aic, AICc=opt$aicc)
  result<-rescale(tree, "OU", o$opt$alpha)
} else if (model == "BM") {
  fit=list(z0.param=opt$z0, sigsq.param=opt$sigsq, lnL=opt$lnL, AIC=opt$aic, AICc=opt$aicc)
  result<-td$phy
} else if (model == "EB") {
  fit=list(z0.param=opt$z0, sigsq.param=opt$sigsq, a=opt$a, lnL=opt$lnL, AIC=opt$aic, AICc=opt$aicc)
  result<-rescale(tree, "EB", o$opt$a)
}

rr<-expression(plotContrasts(result, setNames(td$dat[[column]], td$phy$tip.label), cex.tip.label=0.5))
treePlot = cardoonPlot(expression(plotContrasts(result, setNames(td$dat[[column]], td$phy$tip.label), cex.tip.label=0.5)), width=1000, height=1000, res=100)
treePlot = treePlot$png
return(list(treePlot=treePlot,result=result,fit=fit))

}
fitDiscrete.json<-function(tree,table,column,model)
{

## fitDiscrete script
library(aRbor)
library(geiger)
library(cardoonTools)

td <- make.treedata(tree, table)
td <- checkFactor(td)
valid.factor <- which(colnames(td$dat)==column)
if(length(valid.factor)==0){
  stop("The supplied column is not present, or is not a valid continuous trait")
}
td <- select(td, valid.factor)

o <- fitDiscrete(td$phy, td$dat, model=model)

res = data.frame(lnL = o$opt$lnL, aic = o$opt$aic, aicc = o$opt$aicc, k = o$opt$k)
Q <- geiger:::.Qmatrix.from.gfit(o)
Q<-cbind(rownames(Q), Q)

return(list(Q=Q,res=res))
}
