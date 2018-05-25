# minimal example for PGLS_2var_app

require(ape)

table<-read.csv("/Users/lukeharmon/Documents/arbor/arborCollections/sampleDatasets/anolis.csv")
tree<-read.tree("/Users/lukeharmon/Documents/arbor/arborCollections/sampleDatasets/anolis.phy")
correlation<-"BM"
dep_variable<-"SVL"
ind_variable<-"head size"
  
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

# substitute to mimic what R does with column names that contain spaces
dep_variable<-gsub(" ", ".", dep_variable)
ind_variable<-gsub(" ", ".", ind_variable)

fmla <- as.formula(paste(as.character(dep_variable), "~", as.character(ind_variable),sep=""))
res<-gls(model=fmla, correlation=cor, data=table, control=glsControl(opt="optim"))
sum_res <- summary(res)
sum_aov <- anova(res)


parameter <- coef(summary(res))
coefficients <- cbind(rownames(parameter), parameter)
colnames(coefficients)[1]<-"parameter"

if(correlation == "OU") {
  alpha<-res$modelStruct[[1]][[1]]
  coefficients <- rbind(coefficients, c("alpha", alpha, NA, NA, NA))
}



modelfit_summary <- data.frame("AIC"= sum_res$AIC, loglik=sum_res$logLik, residual_SE=sum_res$sigma, df_total=sum_res$dims$N, df_residual=sum_res$dims$N-sum_res$dims$p)

pgls_plot <- function() {
  plot(table[,ind_variable], table[,dep_variable], pch=21, bg="gray80", xlab=ind_variable, ylab=dep_variable)
  abline(res, lty=2, lwd=2)
}

pglsPlot = cardoonPlot(expression(pgls_plot()), width=1000, height=1000, res=100)
pglsPlot = pglsPlot$png