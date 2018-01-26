# Loading all data into a huge data frame:
require(data.table)
require(ggplot2)
require(ggthemes)
require(scales) 
require(gridExtra)
require(grid)

# setwd
setwd("~/Documents/estudos/gaParameterAnalysis/data")

# load data
loadDimension <- function(dim){
  workdir <- paste0("results_SBX",dim,"D/")
  ddd <- NULL
  for (j in 1:24) {
    dd <- NULL
    
    for (i in 2:24) {
      d <- read.csv(paste0(workdir,"f",j,"_",i,".txt"),header = FALSE)
      names(d) <- c("gen","min","mean","max","sd","rep")
      k <- rep(i,nrow(d))
      d <- cbind(d,k)
      dd <- rbind(dd,d)
    }
    f <- rep(j,nrow(dd))
    dd <- cbind(dd,f)
    ddd <- rbind(ddd,dd)
  }
  return (ddd)
}

# processing data
## getting data of only the last gen
# ddd10_sbx <- loadDimension(10)
# ddd20_sbx <- loadDimension(20)
# ddd40_sbx <- loadDimension(40)


# ddd10_sbx <- as.data.table(ddd10_sbx)
# ddd10_sbx <- ddd10_sbx[ddd10_sbx[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

# ddd20_sbx <- as.data.table(ddd20_sbx)
# save(ddd20_sbx, file = "ddd20-sbx.RData")
load("ddd20-sbx.RData")
ddd20_sbx <- ddd20_sbx[ddd20_sbx[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

# ddd40_sbx <- as.data.table(ddd40_sbx)
# save(ddd40_sbx, file = "ddd40-sbx.RData")
load("ddd40-sbx.RData")
ddd40_sbx <- ddd40_sbx[ddd40_sbx[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

# get the means of the last gen
# means10 <- aggregate(ddd10, list(k = ddd10$k, f = ddd10$f), mean)
# means10 <- as.data.table(means10)


means20_sbx <- aggregate(ddd20_sbx, list(k = ddd20_sbx$k, f = ddd20_sbx$f), mean)
means20_sbx <- as.data.table(means20_sbx)

means40_sbx <- aggregate(ddd40_sbx, list(k = ddd40_sbx$k, f = ddd40_sbx$f), mean)
means40_sbx <- as.data.table(means40_sbx)


