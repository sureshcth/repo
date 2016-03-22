#!/usr/bin/python

'''
	Want to find the index inside a for loop? Wrap an iterable with 'enumerate' and it will yield the item along with its index.
'''

# Know the index faster
vowels=['a','e','i','o','u']
for i, letter in enumerate(vowels):
	print (i, letter)


