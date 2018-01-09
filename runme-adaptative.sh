for i in {2..2} 
do
	# repetition loop
	for j in {0..40} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF1.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF2.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF3.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF4.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF5.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF6.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF7.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF8.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF9.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF10.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' &
		wait 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF11.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF12.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF13.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF14.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF15.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF16.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF17.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF18.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF19.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF20.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		wait
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF21.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF22.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF23.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF24.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		wait
	done
done