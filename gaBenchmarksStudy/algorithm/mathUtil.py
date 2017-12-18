# from numba import jit
import numpy as np
# from functools import lru_cache as cache

# @cache(maxsize=128)
# @jit


def invertPoisson(x,mi):
    """ Calculates the value that would be found in a 
    poisson distribution with lambda = mi at probability
    value X
    """
    if(mi >= 0):
        if(x >= 0):
            if(x < 1):
                l_val = np.exp(-mi)
                k = 1
                prob = 1 * x

                while(prob>l_val):
                    k += 1
                    prob = prob * x
                return k

# @jit
def calcNumberBins(lambda_i, omega_i, weights=1, adjusting=0):
    """ Transform a set of real valued bins (0..1) into 
    a set of integer bins, using the value of real data 
    (omega) as the mean for the poisson distribution"""

    invP = np.vectorize(invertPoisson)
    bin = (invP(lambda_i, omega_i*weights)-adjusting).tolist()
    # invertPoisson.cache_clear()
    return bin


def calcNumberBinsOld(lambda_i, omega_i, weights=1, adjusting=0):
    """ Transform a set of real valued bins (0..1) into 
    a set of integer bins, using the value of real data 
    (omega) as the mean for the poisson distribution"""
    bin=[]
    if weights is 1:
        for lam,om in zip(lambda_i,omega_i):
            bin.append(invertPoisson(lam,om)-adjusting)
    else: 
        for lam, om, weight in zip(lambda_i, omega_i, weights):
            bin.append(invertPoisson(lam,om*weight)-adjusting)
    return bin


def normalize(auxList):
    """ Normalize the number of observations, to a value between 0 and 1""" 

    sumValue = sum(auxList)

    #divide each entry by this sumValue
    aux2List=[]
    aux2List[:]=[12/sumValue if x >= 12 else x/sumValue for x in auxList]

    return aux2List

def percentile(value, sample):
    """ Defines how many observations are less or igual to the sample
        It sorts the vector sample, and advances it until we find a value in it that is bigger than the sample
    """ 
    numberOfSamples=len(sample)
    sampleCopy=sample.tolist()
    sampleCopy.sort()
    for i in range(numberOfSamples):
        if value<=sampleCopy[i]:
            return float(i/numberOfSamples)
    return 1.0

def calcFactorial(filename, limit=200):
    for i in range(limit):
        with open(filename, 'a') as f:
            fact = np.math.factorial(i)
            f.write(str(fact))
            f.write(str("\n"))

def loadFactorial(filename):
    fact = list()
    f = open(filename, "r")    
    i=1
    for line in f:
        line = line.strip('\n')
        fact.insert(i,int(line))
        i+=1
    return fact








