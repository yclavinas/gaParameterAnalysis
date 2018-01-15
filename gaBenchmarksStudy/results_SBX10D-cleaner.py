import os
import re
import numpy as np

output_file = str()

for file in os.listdir("../data/SBX-10D-800"):
	if file.endswith(".txt") and file.startswith("f"):
		i=-1
		f = open("../data/SBX-10D-800/"+file, "r")
		output_file = re.sub('_dim_[0-9]*_[a-z]*', '', file)
		g = open("../data/results_SBX10D/"+output_file, "w")
		for line in f:	
			if i < 40:
				data1 = line.split()
				if data1[0] != 'gen':
					if len(data1) == 5:
						data1.append(i)
						output = ', '.join(str(e) for e in data1)
						g.write(output)
						g.write('\n')
				else:
					i+=1
		g.close()
		f.close()