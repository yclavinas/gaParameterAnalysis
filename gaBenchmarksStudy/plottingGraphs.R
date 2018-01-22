setwd("~/Documents/estudos/gaParameterAnalysis/gaBenchmarksStudy")
source('dataPlot.R')
setwd("~/Documents/estudos/gaParameterAnalysis/gaBenchmarksStudy")
source('dataPlot-sbx.R')
setwd("~/Documents/estudos/gaParameterAnalysis/gaBenchmarksStudy")
source('dataPlot-2n2n.R')
setwd("~/Documents/estudos/gaParameterAnalysis/data/")

#unimodal data
f_interval=c(2,5,6,7,8,9,10,11,12,13,14)
unimodal20 <- means20[f %in% c(f_interval)]
unimodal20_sbx <- means20_sbx[f %in% c(f_interval)]
unimodal40 <- means40[f %in% c(f_interval)]
unimodal40_sbx <- means40_sbx[f %in% c(f_interval)]
unimodal10_2n2n <- means10_2n2n[f %in% c(f_interval)]
unimodal20_2n2n <- means20_2n2n[f %in% c(f_interval)]
unimodal40_2n2n <- means40_2n2n[f %in% c(f_interval)]

#multimodalF3, F4, F15, F16, F17, F18, F19, F20, F21, F22, F23, F24
f_interval=c(3,4,15,16,17,18,19,20,21,22,23,24)
multimodal20 <- means20[f %in% c(f_interval)]
multimodal20_sbx <- means20_sbx[f %in% c(f_interval)]
multimodal40 <- means40[f %in% c(f_interval)]
multimodal40_sbx <- means40_sbx[f %in% c(f_interval)]
multimodal10_2n2n <- means10_2n2n[f %in% c(f_interval)]
multimodal20_2n2n <- means20_2n2n[f %in% c(f_interval)]
multimodal40_2n2n <- means40_2n2n[f %in% c(f_interval)]


names = c("SphereFunction ", "Ellipsoidal Function", "Rastrigin Function",
          "Buche-Rastrigin Function", "Linear Slope", 
          "Attractive Sector Function", "Step Ellipsoidal Function",
          "Rosenbrock Function", "Rosenbrock Function Rotated",
          "Ellipsoidal Function", "Discus Function", "Bent Cigar Function",
          "Sharp Ridge Function", "Different Powers Function", 
          "Rastrigin Function", "Weierstrass Function", 
          "Schaffers F7 Function", 
          "Schaffers F7 Function moderately ill-conditioned",
          "Composite Griwank-Rosenbrock Function F8F2",
          "Schwefel Function", "Gallagher's Gaussian 101-me Peaks Function",
          "Gallagher's Gaussian 21-hi Peaks Function", "Katsuura Function",
          "Lunacek bi-Rastrigin Function")

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
k_min_plot <- function(data, k_interval = NULL, f_interval = NULL, dim = NULL, algo = NULL){
  means <- k_subsetting(data, k_interval)
  
  means <- f_subsetting(means, f_interval)
  
  p10<- ggplot(means, aes(k, min, color = f, group = means$f))+
    geom_point(col = 'red')+
    geom_line()+
    geom_smooth(alpha  = .7,method = 'lm')+
    geom_hline(yintercept = ablines[f_interval], color = "red")+
    theme(legend.position="none")
  p10$labels$colour <- "Function"
  p10$labels$title <- paste(names[f_interval],"with",dim,"dimensions - ", algo)
  grid.arrange(arrangeGrob(p10+theme(axis.title.y = element_blank(),axis.title.x = element_blank()),
                           nrow=1,
                           left = textGrob("Optimum Value", rot = 90, gp=gpar(fontsize=28)),
                           bottom = textGrob("Tournament size", gp=gpar(fontsize=28))
  )
  )
}

#plot data

## Uniform - 20D
# for (i in c(2:24)){
#   png(file = paste0("../graphs/f",  i,"_dim_20.png"), 480, 480)
#   k_min_plot(means20, k_interval = NULL, f_interval = c(i), dim = 40)
#   dev.off()
# } 

for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/uniform-20D/unimodal_uniform_",  i,"_dim_20.png"))
  k_min_plot(unimodal20, f_interval = c(i), dim = 20, algo = 'Uniform')
  dev.off()
} 

for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/uniform-20D/multimodal_uniform_",  i,"_dim_20.png"))
  k_min_plot(multimodal20, f_interval = c(i), dim = 20, algo = 'Uniform')
  dev.off()
}

## Uniform - 40D
# for (i in c(2:24)){
#   png(file = paste0("../graphs/f",  i,"_dim_40.png"), 480, 480)
#   k_min_plot(means40, k_interval = NULL, f_interval = c(i), dim = 40)
#   dev.off()
# } 

for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/uniform-40D/unimodal_uniform_",  i,"_dim_40.png"))
  k_min_plot(unimodal40, f_interval = c(i), dim = 40, algo = 'Uniform')
  dev.off()
} 

for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/uniform-40D/multimodal_uniform_",  i,"_dim_40.png"))
  k_min_plot(multimodal40, f_interval = c(i), dim = 40, algo = 'Uniform')
  dev.off()
} 

## SBX - 20D
# for (i in c(2:24)){
#   png(file = paste0("../graphs/f_sbx_",  i,"_dim_20.png"), 480, 480)
#   k_min_plot(means20_sbx, k_interval = NULL, f_interval = c(i), dim = 40)
#   dev.off()
# } 

for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/SBX-20D/unimodal_sbx_",  i,"_dim_20.png"))
  k_min_plot(unimodal20_sbx, f_interval = c(i), dim = 20, algo = 'SBX')
  dev.off()
} 

for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/SBX-20D/multimodal_sbx_",  i,"_dim_20.png"))
  k_min_plot(multimodal20_sbx, f_interval = c(i), dim = 20, algo = 'SBX')
  dev.off()
} 

## SBX - 40D

# for (i in c(2:24)){
#   png(file = paste0("../graphs/f_sbx_",  i,"_dim_40.png"), 480, 480)
#   k_min_plot(means40_sbx, k_interval = NULL, f_interval = c(i), dim = 40)
#   dev.off()
# } 

for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/SBX-40D/unimodal_sbx_",  i,"_dim_40.png"))
  k_min_plot(unimodal40_sbx, f_interval = c(i), dim = 40, algo = 'SBX')
  dev.off()
} 

for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/SBX-40D/multimodal_sbx_",  i,"_dim_40.png"))
  k_min_plot(multimodal40_sbx, f_interval = c(i), dim = 40, algo = 'SBX')
  dev.off()
} 


## 2n2n - 10D
for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/2n2n-10D/unimodal_2n2n_",  i,"_dim_10.png"))
  k_min_plot(unimodal10_2n2n, f_interval = c(i), dim = 10, algo = '2n2n')
  dev.off()
} 


for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/2n2n-10D/multimodal_2n2n_",  i,"_dim_10.png"))
  k_min_plot(multimodal10_2n2n, f_interval = c(i), dim = 10, algo = 'SBX')
  dev.off()
} 


## 2n2n - 20D
for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/2n2n-20D/unimodal_2n2n_",  i,"_dim_20.png"))
  k_min_plot(unimodal20_2n2n, f_interval = c(i), dim = 20, algo = '2n2n')
  dev.off()
} 


for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/2n2n-20D/multimodal_2n2n_",  i,"_dim_20.png"))
  k_min_plot(multimodal20_2n2n, f_interval = c(i), dim = 20, algo = 'SBX')
  dev.off()
} 


## 2n2n - 40D
for (i in c(2,5,6,7,8,9,10,11,12,13,14)){
  png(file = paste0("../graphs/2n2n-40D/unimodal_2n2n_",  i,"_dim_40.png"))
  k_min_plot(unimodal40_2n2n, f_interval = c(i), dim = 40, algo = '2n2n')
  dev.off()
} 


for (i in c(3,4,15,16,17,18,19,20,21,22,23,24)){
  png(file = paste0("../graphs/2n2n-40D/multimodal_2n2n_",  i,"_dim_40.png"))
  k_min_plot(multimodal40_2n2n, f_interval = c(i), dim = 40, algo = 'SBX')
  dev.off()
} 
