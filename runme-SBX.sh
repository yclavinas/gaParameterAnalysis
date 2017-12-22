for i in {2..25} 
do
	# repetition loop
	for j in {0..40} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF1.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF2.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF3.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF4.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF5.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF6.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF7.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF8.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF9.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF10.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF11.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF12.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF13.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF14.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF15.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF16.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF17.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF18.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF19.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF20.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF21.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF22.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF23.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF24.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-SBX/gaParams.txt' & 
	done
done