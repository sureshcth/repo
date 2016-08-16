from pylab import *
k=4
th = linspace(0, 10*pi,1000) 
r = cos(k*th)
polar(th,r)
savefig("POLARROSE")
