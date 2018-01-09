setwd("~/Documents/estudos/gaParameterAnalysis/gaBenchmarksStudy")
source('dataPlot.R')
setwd("~/Documents/estudos/gaParameterAnalysis/gaBenchmarksStudy")
source('dataPlot-sbx.R')
setwd("~/Documents/estudos/gaParameterAnalysis/gaBenchmarksStudy")
source('dataPlot-2n2n.R')
setwd("~/Documents/estudos/gaParameterAnalysis/data/")
library(rcompanion)

#unimodal data
f_interval=c(2,5,6,7,8,9,10,11,12,13,14)
unimodal20 <- means20[f %in% c(f_interval)]
unimodal20_sbx <- means20_sbx[f %in% c(f_interval)]
unimodal40 <- means40[f %in% c(f_interval)]
unimodal40_sbx <- means40_sbx[f %in% c(f_interval)]
unimodal40_2n2n <- means40_2n2n[f %in% c(f_interval)]

#multimodalF3, F4, F15, F16, F17, F18, F19, F20, F21, F22, F23, F24
f_interval=c(3,4,15,16,17,18,19,20,21,22,23,24)
multimodal20 <- means20[f %in% c(f_interval)]
multimodal20_sbx <- means20_sbx[f %in% c(f_interval)]
multimodal40 <- means40[f %in% c(f_interval)]
multimodal40_sbx <- means40_sbx[f %in% c(f_interval)]
multimodal40_2n2n <- means40_2n2n[f %in% c(f_interval)]

# Runs friedman test
# friedman.test(min ~ k | f, data = means10)

## Uniform - 20D
friedman.test(min ~ k | f, data = unimodal20)
friedman.test(min ~ k | f, data = multimodal20)
friedman.test(min ~ k | f, data = means20)

## Uniform - 40D
friedman.test(min ~ k | f, data = unimodal40)
friedman.test(min ~ k | f, data = multimodal40)
friedman.test(min ~ k | f, data = means40)

## SBX - 20D
friedman.test(min ~ k | f, data = unimodal20_sbx)
friedman.test(min ~ k | f, data = multimodal20_sbx)
friedman.test(min ~ k | f, data = means20_sbx)

## SBX - 40D
friedman.test(min ~ k | f, data = unimodal40_sbx)
friedman.test(min ~ k | f, data = multimodal40_sbx)
friedman.test(min ~ k | f, data = means40_sbx)
# friedman.test(min ~ k | f, data = pseudoData)

## 2n2n - 40D
friedman.test(min ~ k | f, data = unimodal40_2n2n)
friedman.test(min ~ k | f, data = multimodal40_2n2n)
friedman.test(min ~ k | f, data = means40_2n2n)

'# Runs pairwise Sign test 
# (NOT NECESSARY IF Friedman test does not reject null hypothesis)'

# PT = pairwiseSignTest(min ~ k, data = means10, method = "fdr")
# cldList(p.adjust ~ Comparison, data = PT, threshold = 0.05)

# PT = pairwiseSignTest(min ~ k, data = means20, method = "fdr")
# cldList(p.adjust ~ Comparison, data = PT, threshold = 0.05)

PT = pairwiseSignTest(min ~ k, data = means40, method = "fdr")
cldList(p.adjust ~ Comparison, data = PT, threshold = 0.05)

# PT = pairwiseSignTest(min ~ k, data = pseudoData, method = "fdr")
# cldList(p.adjust ~ Comparison, data = PT, threshold = 0.05)


