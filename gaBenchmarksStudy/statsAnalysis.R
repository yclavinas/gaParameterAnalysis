setwd("~/Documents/estudos/earthquakemodels/data/")
source('dataPlot.R')
library(rcompanion)

# Runs friedman test
friedman.test(min ~ k | f, data = means10)
friedman.test(min ~ k | f, data = means20)
friedman.test(min ~ k | f, data = means40)
friedman.test(min ~ k | f, data = pseudoData)

'# Runs pairwise Sign test 
# (NOT NECESSARY IF Friedman test does not reject null hypothesis)'

PT = pairwiseSignTest(min ~ k, data = means10, method = "fdr")
cldList(p.adjust ~ Comparison, data = PT, treshold = 0.05)

PT = pairwiseSignTest(min ~ k, data = means20, method = "fdr")
cldList(p.adjust ~ Comparison, data = PT, treshold = 0.05)

PT = pairwiseSignTest(min ~ k, data = means40, method = "fdr")
cldList(p.adjust ~ Comparison, data = PT, treshold = 0.05)

PT = pairwiseSignTest(min ~ k, data = pseudoData, method = "fdr")
cldList(p.adjust ~ Comparison, data = PT, treshold = 0.05)


#plot data

for (i in c(22,21, 17, 12, 9,8, 5, 2,1)){
  png(file = paste0("../graphs/f",  i,"_dim_10.png"), 480, 480)
  k_min_plot(means10, k_interval = NULL, f_interval = c(i), dim = 10)
  dev.off()
}

for (i in c(22,21, 17, 12, 9,8, 5, 2,1)){
  png(file = paste0("../graphs/f",  i,"_dim_20.png"), 480, 480)
  k_min_plot(means20, k_interval = NULL, f_interval = c(i), dim = 20)
  dev.off()
}

for (i in c(22,21, 17, 12, 9,8, 5, 2,1)){
  png(file = paste0("../graphs/f",  i,"_dim_40.png"), 480, 480)
  k_min_plot(means40, k_interval = NULL, f_interval = c(i), dim = 40)
  dev.off()
} 


for (i in c(2:24)){
  png(file = paste0("../graphs/SBX-f",  i,"_dim_40.png"), 480, 480)
  k_min_plot(means40, k_interval = NULL, f_interval = c(i), dim = 40)
  dev.off()
} 

