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

k_subsetting <- function(data, k_interval = NULL){
  if (!is.null(k_interval)){
    data <- data[k %in% c(k_interval)]
  }
  else{
    data <- data
  } 
}

f_subsetting <- function(data, f_interval = NULL){
  if (!is.null(f_interval)){
    data <- data[f %in% c(f_interval)]
  }
  else{
    data <- data
  } 
}

ablines = c(1:24)
for (i in 1:24){
  workdir <- paste0("targets/")
  data <- read.csv(paste0(workdir,"target_f",i,"_dim_40_tournsize_2.txt"),header = FALSE)
  ablines[i] = tail(data)$V1
}

#function to plot k versus min value given an interval (function goes in graph)
k_min_plot <- function(data, k_interval = NULL, f_interval = NULL, dim = NULL){
  means <- k_subsetting(data, k_interval)
  
  means <- f_subsetting(means, f_interval)
  
  p10<- ggplot(means, aes(k, min, color = f, group = means$f))+
    geom_point(col = 'red')+
    geom_line()+
    geom_smooth(alpha  = .7,method = 'lm')+
    geom_hline(yintercept = ablines[f_interval], color = "red")+
    theme(legend.position="none")
  p10$labels$colour <- "Function"
  p10$labels$title <- paste("Function",f_interval,"with",dim,"dimensions")
  grid.arrange(arrangeGrob(p10+theme(axis.title.y = element_blank(),axis.title.x = element_blank()),
                           nrow=1,
                           left = textGrob("Optimum Value", rot = 90),
                           bottom = textGrob("Tournament size")
  )
  )
}
# k_min_plot(means10, means20, means40, f_interval = c(1))

#function to plot f versus min value given an interval (k goes in graph)
f_min_plot <- function(data, k_interval = NULL, f_interval = NULL, dim = NULL){
  means <- k_subsetting(data, k_interval)
  means <- f_subsetting(means, f_interval)
  
  p10<- ggplot(means, aes(f, min, color = k, group = means$k))+
    geom_point(col = 'red')+
    geom_line()+
    geom_smooth(alpha  = .3,method = 'lm')+
    p10$labels$title <- paste("Function",f_interval,"with",dim,"dimensions")
  p10$labels$colour <- "Tour. size"
  p10$labels$title <- paste("Function",f_interval,dim,"dimensions")
  grid.arrange(arrangeGrob(p10+
                             theme(axis.title.y = element_blank(),
                                   axis.title.x = element_blank()),
                           nrow=1,
                           left = textGrob("Optimum Value found", rot = 90),
                           top  = textGrob(" Tournament size"),
                           bottom = textGrob("Function")))
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


