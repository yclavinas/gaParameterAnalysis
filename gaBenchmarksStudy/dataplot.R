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
  workdir <- paste0("results_UniformGaussian",dim,"D/")
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
# ddd10 <- loadDimension(10)
# ddd20 <- loadDimension(20)
# ddd40 <- loadDimension(40)

# ddd10 <- as.data.table(ddd10)
# save(ddd10, file = "ddd10.RData")
load("ddd10.RData")
ddd10 <- ddd10[ddd10[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

# ddd20 <- as.data.table(ddd20)
# save(ddd20, file = "ddd20.RData")
load("ddd20.RData")
ddd20 <- ddd20[ddd20[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]

# ddd40 <- as.data.table(ddd40)
# save(ddd40, file = "ddd40.RData")
load("ddd40.RData")
ddd40 <- ddd40[ddd40[, .I[gen == max(gen)], by=list(rep, k, f)]$V1]




# get the means of the last gen
means10 <- aggregate(ddd10, list(k = ddd10$k, f = ddd10$f), mean)
means10 <- as.data.table(means10)

means20 <- aggregate(ddd20, list(k = ddd20$k, f = ddd20$f), mean)
means20 <- as.data.table(means20)

means40 <- aggregate(ddd40, list(k = ddd40$k, f = ddd40$f), mean)
means40 <- as.data.table(means40)


