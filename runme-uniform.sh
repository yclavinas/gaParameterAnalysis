for i in {2..25} 
do
	# repetition loop
	for j in {0..40} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-uniform/benchmarks-gamodelF1.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-uniform/gaParams.txt' & 
	done
done