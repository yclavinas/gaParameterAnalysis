for i in {2..2} 
do
	# repetition loop
	for j in {0..40} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-pseudo-adaptative/benchmarks-gamodelF9.py -tournsize "$i" -params 'gaBenchmarksStudy/benchmarks-pseudo-adaptative/gaParams.txt' & 
		wait
	done
done