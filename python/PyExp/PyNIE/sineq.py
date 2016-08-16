from pylab import *
x = linspace(-pi, pi , 100)

y = 2 - (2 * sin(x)) + ( ( sin(x) * (sqrt(abs(cos(x)))) / (sin(x) + 1.4)) ) 

plot(x, y)

savefig("SINEEQ");
