    ##"script": "
require(nlme)
require(treeplyr)
require(cardoonTools)

rownames(table) <- NULL
td <- treeplyr::make.treedata(tree, table)
phy <- td$phy
dat <- td$dat

if(correlation=="BM"){
  cor <- corBrownian(1, phy=phy)
}
if(correlation=="OU"){
  cor <- corMartins(1, phy=phy, fixed=FALSE)
}
if(correlation=="Pagel"){
  cor <- corPagel(1, phy=phy, fixed=FALSE)
  cor1 <- corPagel(1, phy=phy, fixed=TRUE)
  cor0 <- corPagel(0, phy=phy, fixed=TRUE)
}
if(correlation=="ACDC"){
  cor <- corBlomberg(1, phy=phy, fixed=FALSE)
}

yy <- as.character(dep_variable)
xn <- colnames(dat)[which(colnames(dat) != dep_variable & colnames(dat) != "Species")]

if(additiveModel=="TRUE") {
  xx <- paste(xn, collapse=" + ")
} else {
  xx <- paste(xn, collapse=" * ")
}

fmla <- as.formula(paste(yy, "~", xx, sep=""))
glsfit <- gls(model=fmla, correlation=cor, data=dat)
sum_res <- summary(glsfit)
sum_aov <- anova(glsfit)
coefficients <- cbind(rownames(sum_aov), sum_aov)
colnames(coefficients)[1]<-"parameter"

modelfit_summary <- data.frame("AIC"= sum_res$AIC, loglik=sum_res$logLik, residual_SE=sum_res$sigma, df_total=sum_res$dims$N, df_residual=sum_res$dims$N-sum_res$dims$p)

if(correlation=="Pagel") modelfit_summary<-c(modelfit_summary, "lambda"=glsfit$modelStruct[[1]][1])

plotfn <- function(){
    print(plot(glsfit))
}

pglsPlot <- cardoonPlot(expression(plotfn()), height=1000, width=1000, res=72)
pglsPlot <- pglsPlot$png
## Bug in plot.lme used with cardoonPlot. Work around...
#@file <- tempfile(fileext = sprintf(".", "png"))
#result <- list()
#png(file, width=1000, height=1000, res=72)
#print(plot(glsfit))
#dev.off()
#bytes <- file.info(file)$size
#result$png <- base64enc:::base64encode(readBin(file, "raw", n = bytes))
#file.remove(file)
#pglsPlot <- result$png













"
    ##"script": "
require(ape)
require(nlme)
require(cardoonTools)

if(correlation=="BM"){
  cor <- corBrownian(1, phy=tree)
}
if(correlation=="OU"){
  cor <- corMartins(1, phy=tree, fixed=FALSE)
}
if(correlation=="Pagel"){
  cor <- corPagel(1, phy=tree, fixed=FALSE)
  cor1 <- corPagel(1, phy=tree, fixed=TRUE)
  cor0 <- corPagel(0, phy=tree, fixed=TRUE)
}
if(correlation=="ACDC"){
  cor <- corBlomberg(1, phy=tree, fixed=FALSE)
}

fmla <- as.formula(paste(as.character(dep_variable), "~", as.character(ind_variable),sep=""))
res <- gls(model=fmla, correlation=cor, data=table)
sum_res <- summary(res)
sum_aov <- anova(res)
coefficients <- cbind(rownames(sum_aov), sum_aov)
colnames(coefficients)[1]<-"parameter"

#coefficients <- cbind(rownames(sum_res$tTable), sum_res$tTable)
#colnames(coefficients)[1]<-"parameter"

modelfit_summary <- data.frame("AIC"= sum_res$AIC, loglik=sum_res$logLik, residual_SE=sum_res$sigma, df_total=sum_res$dims$N, df_residual=sum_res$dims$N-sum_res$dims$p)

pgls_plot <- function() {
  plot(table[,ind_variable], table[,dep_variable], pch=21, bg="gray80", xlab=ind_variable, ylab=dep_variable)
  abline(res, lty=2, lwd=2)
}

pglsPlot = cardoonPlot(expression(pgls_plot()), width=1000, height=1000, res=100)
pglsPlot = pglsPlot$png"
    ##"script": "
#data(anolis); tree <- anolis$phy; table <- anolis$dat; column <- "PCI_limbs"; model="EB"

## phylolm script
# require(devtools)
# options(repos="http://cran.cnr.Berkeley.edu")
# install_github("aRbor", "arborworkflows")
require(aRbor)
#install.packages("phylolm")
require(phylolm)

formula <- paste(DependentVariable, "~", IndependentVariable, sep="")
td <- make.treedata(tree, table)

res <- treedply(td, phylolm(formula, dat, phy, model))

if(is.null(res$optpar)) res$optpar <- NA

out <- summary(res)
coef <- data.frame(variable=rownames(out$coefficients), out$coefficients)
resid <- data.frame(tip=rownames(out$residuals), resid=out$residuals)
fit <- data.frame(sigma2 = out$sigma2, otherpar =out$optpar, AIC=out$aic, loglik=out$logLik, df=out$df, model=out$model)
rownames(coef) <- rownames(resid) <- rownames(fit) <- NULL"
    ##"script": "
require(ape)
require(cardoonTools)
require(aRbor)

# Match tree and tip data

td<-make.treedata(tree, table)
tree<-tree

# get x and y data with names
# would be better to have an aRbor function that takes td directly?

x <- select_(td, ind_variable)$dat[[1]]
names(x)<-td$tree$tip.label

y <- select_(td, dep_variable)$dat[[1]]
names(y)<-td$tree$tip.label



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


if(plotPICs=="yes") {
    
    picPlotter <- function () {
        plot(picX, picY)
        abline(res)
    }
    
    picPlot <- cardoonPlot(expression(picPlotter()), width=1000, height=1000, res=100)
    picPlot <- picPlot$png
}"