
# coding: utf-8

# In[1]:

get_ipython().magic(u'matplotlib inline')


# In[13]:

from pylab import *
x = linspace(-pi, pi , 10)

y = sin (x)

plot(x, y)
savefig("fig.png")


# In[12]:

from matplotlib import pyplot as plt

years = [1950, 1960, 1970, 1980, 1990, 2000, 2010]
gdp = [300.2, 543.5, 1075.6, 2000, 2500, 3000, 3010]
plt.plot(years, gdp, color='red', marker='o', linestyle='solid')
plt.title('Norminal GDP')
plt.ylabel('Billions of $')


# In[22]:

from pylab import *
k=10
th = linspace(0, 10*pi,1000000) 
r = cos(k*th)
polar(th,r)


# In[15]:

import pylab
import scipy
x = scipy.linspace(-2,2,1000)
y1 = scipy.sqrt(1-(abs(x)-1)**2)
y2 = -3 * scipy.sqrt(1-(abs(x)/2)**0.5)
pylab.fill_between(x,y1,color='red')
pylab.fill_between(x,y2,color='red')
pylab.xlim([-2.5,2.5])
pylab.text(0,-0.4, 
           'SSBMb3ZlIFlvdQ==\n'.decode('base64', 
                                       'strict') , 
           fontsize=24,fontweight='bold',
           color='white',horizontalalignment='center')


# In[17]:

from pylab import * 
a=2
b=3
t= linspace(0, 2*pi,100) 
x = a * sin(2*t)
y = b * cos(t)
plot(x,y)
x = a * sin(3*t)
y = b * cos(2*t)
plot(x,y)


# In[18]:

from pylab import *
a = 10.0
for a in range(5,21,5):
	th = linspace(0, pi * a/10, 200) 
	x = a * cos(th)
	y = a * sin(th)
	plot(x,y)


# In[23]:

from pylab import *
N = 100 # number of points
x = linspace(0.0, 2 * pi, N) 
y = zeros(N)
for n in range(5):
	term = sin((2*n+1)*x) / (2*n+1)
	y = y + term
	plot(x,y)


# In[ ]:



