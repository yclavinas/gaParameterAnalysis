for i in {2..2} 
do
	# repetition loop
	for j in {0..1} 
	do
		nohup python2.7 gaBenchmarksStudy/benchmarks-SBX/benchmarks-gamodelF9.py -tournsize "$i" -params 'benchmarks/gaParams.txt' & 
		# nohup python2.7 benchmarks-pseudo-adaptative/benchmarks-gamodelF10.py -tournsize "$i" -params 'benchmarks-pseudo-adaptative/gaParams.txt' &
		# nohup python2.7 benchmarks-pseudo-adaptative/benchmarks-gamodelF11.py -tournsize "$i" -params 'benchmarks-pseudo-adaptative/gaParams.txt' &
		# nohup python2.7 benchmarks-pseudo-adaptative/benchmarks-gamodelF12.py -tournsize "$i" -params 'benchmarks-pseudo-adaptative/gaParams.txt' &
		wait
	done
done