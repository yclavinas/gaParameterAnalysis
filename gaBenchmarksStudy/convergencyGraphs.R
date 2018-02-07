setwd("~/Documents/estudos/gaParameterAnalysis/data")
library(knitr)
library(ggplot2)
library(gridExtra)
require(data.table)


names = c("SphereF. ", "Ellipsoidal F.", "Rastrigin F.",
          "Buche-Rastrigin F.", "Linear Slope", 
          "Attractive Sector F.", "Step Ellipsoidal F.",
          "Rosenbrock F.", "Rosenbrock F. Rotated",
          "Ellipsoidal F.", "Discus F.", "Bent Cigar F.",
          "Sharp Ridge F.", "Different Powers F.", 
          "Rastrigin F.", "Weierstrass F.", 
          "Schaffers F7 F.", 
          "Schaffers F7 F. moderately ill-conditioned",
          "Composite Griwank-Rosenbrock F. F8F2",
          "Schwefel F.", "Gallagher's Gaussian 101-me Peaks F.",
          "Gallagher's Gaussian 21-hi Peaks F.", "Katsuura F.",
          "Lunacek bi-Rastrigin F.")

ablines = c(1:24)
for (i in 1:24){
  workdir <- paste0("targets/")
  data <- read.csv(paste0(workdir,"target_f",i,"_dim_40_tournsize_2.txt"),header = FALSE)
  ablines[i] = round(tail(data)$V1, 2)
}


plotforKGA = function(data, f_interval, algo, dim, tsize){
  aux <- data[f %in% c(f_interval)]
  aux <- aux[k %in% c(tsize)]
  min = tapply(aux$min, INDEX = aux$gen, FUN = mean)
  plot_d <- data.frame(min)
  p1<- ggplot(plot_d, aes(min(aux$gen):max(aux$gen), min, colour=min)) + 
    geom_line() +
    geom_point() +
    geom_hline(yintercept=ablines[f_interval], linetype="dotted", color = "red")+
    xlab('Generation') + 
    ylab('Function Mean Value') +
    theme(plot.title = element_text(size=18))+
    theme(axis.title=element_text(size=16))
  print(p1+ theme(legend.position="none"))    
  
}

# SBX
load("ddd40-sbx.RData")
sbx_40 <- as.data.table(ddd40_sbx)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/SBX-40D/covergency_multimodal_sbx_",  i,"_dim_40_tsize_",k,".png"))
    plotforKGA(sbx_40, f_interval = c(i), algo = "SBX", dim = 40, tsize = k)
    dev.off()
  }
}
for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/SBX-40D/covergency_unimodal_sbx_",  i,"_dim_40_tsize_",k,".png"))
    plotforKGA(sbx_40, f_interval = c(i), algo = "SBX", dim = 40, tsize = k)
    dev.off()
  }
}

load("ddd20-sbx.RData")
sbx_20 <- as.data.table(ddd20_sbx)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/SBX-20D/covergency_multimodal_sbx_",  i,"_dim_20_tsize_",k,".png"))
    plotforKGA(sbx_20, f_interval = c(i), algo = "SBX", dim = 20, tsize = k)
    dev.off()
  }
}
for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/SBX-20D/covergency_unimodal_sbx_",  i,"_dim_20_tsize_",k,".png"))
    plotforKGA(sbx_20, f_interval = c(i), algo = "SBX", dim = 20, tsize = k)
    dev.off()
  }
}


load("ddd10-sbx.RData")
sbx_10 <- as.data.table(ddd10_sbx)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/SBX-10D/covergency_multimodal_sbx_",  i,"_dim_10_tsize_",k,".png"))
    plotforKGA(sbx_10, f_interval = c(i), algo = "SBX", dim = 10, tsize = k)
    dev.off()
  }
}
for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/SBX-10D/covergency_unimodal_sbx_",  i,"_dim_10_tsize_",k,".png"))
    plotforKGA(sbx_10, f_interval = c(i), algo = "SBX", dim = 10, tsize = k)
    dev.off()
  }
}

# Uniform
load("ddd40.RData")
uniform_40 <- as.data.table(ddd40)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/uniform-40D/covergency_multimodal_uniform_",  i,"_dim_40_tsize_",k,".png"))
    plotforKGA(uniform_40, f_interval = c(i), algo = "Uniform", dim = 40, tsize = k)
    dev.off()
  }
}
for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/uniform-40D/covergency_unimodal_uniform_",  i,"_dim_40_tsize_",k,".png"))
    plotforKGA(uniform_40, f_interval = c(i), algo = "Uniform", dim = 40, tsize = k)
    dev.off()
  }
}


load("ddd20.RData")
uniform_20 <- as.data.table(ddd20)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/uniform-20D/covergency_multimodal_uniform_",  i,"_dim_20_tsize_",k,".png"))
    plotforKGA(uniform_20, f_interval = c(i), algo = "Uniform", dim = 20, tsize = k)
    dev.off()
  }
}
for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/uniform-20D/covergency_unimodal_uniform_",  i,"_dim_20_tsize_",k,".png"))
    plotforKGA(uniform_20, f_interval = c(i), algo = "Uniform", dim = 20, tsize = k)
    dev.off()
  }
}

load("ddd10.RData")
uniform_10 <- as.data.table(ddd10)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/uniform-10D/covergency_multimodal_uniform_",  i,"_dim_10_tsize_",k,".png"))
    plotforKGA(uniform_10, f_interval = c(i), algo = "Uniform", dim = 10, tsize = k)
    dev.off()
  }
}
for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/uniform-10D/covergency_unimodal_uniform_",  i,"_dim_10_tsize_",k,".png"))
    plotforKGA(uniform_10, f_interval = c(i), algo = "Uniform", dim = 10, tsize = k)
    dev.off()
  }
}


# 2n2n

load("ddd40-2n2n.RData")
b_40 <- as.data.table(ddd40_2n2n)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/2n2n-40D/covergency_multimodal_2n2n_",  i,"_dim_40_tsize_",k,".png"))
    plotforKGA(b_40, f_interval = c(i), algo = "SBX", dim = 40, tsize = k)
    dev.off()
  }
}

for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/2n2n-40D/covergency_unimodal_2n2n_",  i,"_dim_40_tsize_",k,".png"))
    plotforKGA(b_40, f_interval = c(i), algo = "SBX", dim = 40, tsize = k)
    dev.off()
  }
}

load("ddd20-2n2n.RData")
b_20 <- as.data.table(ddd20_2n2n)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/2n2n-20D/covergency_multimodal_2n2n_",  i,"_dim_20_tsize_",k,".png"))
    plotforKGA(b_20, f_interval = c(i), algo = "SBX", dim = 20, tsize = k)
    dev.off()
  }
}

for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
    for (k in 2:24){
      png(file = paste0("../graphs/2n2n-20D/covergency_unimodal_2n2n_",  i,"_dim_20_tsize_",k,".png"))
      plotforKGA(b_20, f_interval = c(i), algo = "SBX", dim = 20, tsize = k)
      dev.off()
  }
}

load("ddd10-2n2n.RData")
b_10 <- as.data.table(ddd10_2n2n)
for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  for (k in 2:24){
    png(file = paste0("../graphs/2n2n-10D/covergency_multimodal_2n2n_",  i,"_dim_10_tsize_",k,".png"))
    plotforKGA(b_10, f_interval = c(i), algo = "SBX", dim = 10, tsize = k)
    dev.off()
  }
}

for (i in c(1,2,5,6,7,8,9,10,11,12,13,14)){
  for (k in 2:24){
    png(file = paste0("../graphs/2n2n-10D/covergency_unimodal_2n2n_",  i,"_dim_10_tsize_",k,".png"))
    plotforKGA(b_10, f_interval = c(i), algo = "SBX", dim = 10, tsize = k)
    dev.off()
  }
}
