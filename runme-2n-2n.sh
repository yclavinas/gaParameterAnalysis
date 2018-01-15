for i in {2..25} 
do
	# repetition loop
	for j in {0..40} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF1.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF2.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF3.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF4.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF5.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF6.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' & 
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF7.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF8.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF9.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF10.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &  
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF11.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF12.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF13.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF14.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF15.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF16.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF17.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF18.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF19.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF20.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF21.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF22.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF23.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' &
		nohup python2.7 gaBenchmarksStudy/benchmarks-2n-2n/benchmarks-gamodelF24.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-2n-2n/gaParams.txt' & 
		wait
	done
done