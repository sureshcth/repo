#!/usr/bin/python
"""
	One can use an 'else' clause with a 'for' loop in Python!
	It's a special type of syntax that executes only if the for loop exits naturally, without any break statements.
"""


arr = [1, 3, 4, 7]

for num in arr:
	if num%2 ==0:
		print "Even Number: ", num
	else:
		print "Odd Number: ", num
else:
	print "One can use an 'else' clause with a 'for' loop in Python."

for num in arr:
	if num%2 !=0:
		print "Odd Number: ", num
	else:
		break
else:
	print "One can use an 'else' clause with a 'for' loop in Python."



