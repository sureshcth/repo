#!/usr/bin/python

''''
(y - 0.75 * abs(x) )^2 + (0.75x)^2  = 1

x = -1.5 to 1.5
y = -2 to 2
'''

x = linspace(-1.5, 1.5, 20)
y = linspace(-2, 2, 20)

term = (y - 0.75)
