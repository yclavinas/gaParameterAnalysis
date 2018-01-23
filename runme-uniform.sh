for i in {18..25} 
do
	# repetition loop
	for j in {0..40} 
	do
		# nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF1.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF3.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF4.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF5.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF6.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF7.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF8.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		wait
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF9.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF10.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF11.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF12.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF13.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		wait
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF14.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF15.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF16.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF17.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF18.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF19.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		wait
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF20.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF21.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF22.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF23.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF24.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
		wait
	done
done