#!/usr/bin/python

'''
	Python's special Slice Operator. It is a way to get items from lists, as well as change them. 
'''

# Slice Operator
a = [1,2,3,4,5]
print(a[0:2]) # Choose elements [0-2), upper-bound noninclusive

print(a[0:-1]) # Choose all but the last

print(a[::-1]) # Reverse the list

print(a[::2]) # Skip by 2

print(a[::-2]) # Skip by -2 from the back
