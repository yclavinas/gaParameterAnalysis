for i in {2..2} 
do
	# repetition loop
	for j in {0..40} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF1.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF2.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF3.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF4.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF5.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF6.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF7.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF8.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF9.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF10.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' &
		wait 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF11.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF12.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF13.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF14.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF15.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF16.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF17.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF18.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF19.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF20.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		wait
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF21.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF22.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF23.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/benchmarks-gamodelF24.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative-sbx/gaParams.txt' & 
		wait
	done
done