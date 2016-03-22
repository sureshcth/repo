#!/usr/bin/python
'''
	Instead of building a list with a loop, one can build it more concisely with a list comprehension. 
'''

# Simple List Append
a = []
for x in range(0,10):
	a.append(x)
print(a)
# List Comprehension
print([x for x in a])
