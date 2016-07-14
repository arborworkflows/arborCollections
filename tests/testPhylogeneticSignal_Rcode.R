    ##"script": "

# measure phylogenetic signal
require(aRbor)



td <- make.treedata(tree, table)
td <- select(td, which(colnames(td$dat)==column))
phy <- td$phy
dat <- td$dat

charType <- aRbor:::detectCharacterType(dat[[1]], cutoff=0.2)

if(charType=="discrete"){
  result <- physigArbor(td, charType=charType, signalTest="pagelLambda")
#  analysisType <- "discrete lambda"
}
if(charType=="continuous"){
  if(method=="lambda") {
    result <- physigArbor(td, charType=charType, signalTest="pagelLambda")
#    analysisType <- "continuous lambda"
  }
  
  if(method=="K") {
    result <- physigArbor(td, charType=charType, signalTest="Blomberg")
#    analysisType <- "continuous K"
  
  }
}

result <- t(as.data.frame(unlist(result)))
rownames(result) <- NULL
"
    ##"script": "

# measure phylogenetic signal for all characters in a matrix
# requires all characters of the same type - either continuous or discrete
require(aRbor)

td <- make.treedata(tree, table)
if(charType=="continuous") td <- checkNumeric(td)
if(charType=="discrete") td <- checkFactor(td)

error<-F

if(charType=="discrete" & method=="K") {
  cat("error - K is not applicable for discrete characters\n")
  error<-T
}

if(charType=="discrete" & method=="lambda") {
  result_raw <- physigArbor(td, charType="discrete", signalTest="pagelLambda")
} 

if(charType=="continuous" & method=="K") {
  result_raw <- physigArbor(td, charType="continuous", signalTest="Blomberg")
}

if(charType=="continuous" & method=="lambda") {
  result_raw <- physigArbor(td, charType="continuous", signalTest="pagelLambda")
}

if(method=="lambda" & !error) {
  result<-matrix(unlist(result_raw), ncol=7, byrow=T)
  rownames(result) <- colnames(td$dat)
  colnames(result) <- c("lnL-lambda0", "lnL-lambdaEst", "chiSqTest", "chiSqP", "aiccLambda0", "aiccLambdaEst", "lambdaEst")
}  else if(!error){
  result<-matrix(unlist(result_raw), ncol=5, byrow=T)
  rownames(result) <- colnames(td$dat)
  colnames(result) <- c("K", "var-obs", "var-rnd", "P", "zScore")
}
if(error) result<-NA

if(!error) result<-cbind(rownames(result), result)

"