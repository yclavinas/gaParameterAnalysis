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
  workdir <- paste0("results-2n-2n-sbx-",dim,"D/")
  ddd <- NULL
  for (j in 2:24) {
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
# save(ddd20_2n2n, file = "ddd20-sbx.RData")
# ddd40_2n2n <- loadDimension(40)
# save(ddd40_2n2n, file = "ddd40-2n2n.RData")
# load("ddd10.RData")
# load("ddd20-sbx.RData")
load("ddd40-2n2n.RData")

# group <- as.data.table(ddd10)
# ddd10 <- group[group[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]
# 
# group_sbx <- as.data.table(ddd20_sbx)
# ddd20_sbx <- group_sbx[group_sbx[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

group_2n2n <- as.data.table(ddd40_2n2n)
ddd40_2n2n <- group_2n2n[group_2n2n[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

# get the means of the last gen
# means10 <- aggregate(ddd10, list(k = ddd10$k, f = ddd10$f), mean)
# means10 <- as.data.table(means10)
# 
# means20_sbx <- aggregate(ddd20_sbx, list(k = ddd20_sbx$k, f = ddd20_sbx$f), mean)
# means20_sbx <- as.data.table(means20)

means40_2n2n <- aggregate(ddd40_2n2n, list(k = ddd40_2n2n$k, f = ddd40_2n2n$f), mean)
means40_2n2n <- as.data.table(means40_2n2n)


