#!/usr/bin/python

'''
	We can't define Infinities right? But wait! Not for Python.
'''

# Positive Infinity
p_infinity = float('Inf')
 
if 99999999999999 > p_infinity:
	print("The number is greater than Infinity!")
else:
	print("Infinity is greatest")
# Negetive Infinity
n_infinity = float('-Inf')
if -99999999999999 < n_infinity:
	print("The number is lesser than Negative Infinity!")
else:
	print("Negative Infinity is least")
