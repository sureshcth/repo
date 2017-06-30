
# coding: utf-8

# In[1]:

T = (1, 2, 3)


# In[2]:

T


# In[3]:

dir(T)


# In[4]:

T = ( x for x in "Hello World")


# In[5]:

T


# In[6]:

next(T)


# In[7]:

next(T)


# In[11]:

a = 1000
def next_one():
    print "Inner ", a
    return a+1

next_one()
print "Outer ", a
#print next_one(2)


# In[12]:

g = lambda x: x**2


# In[13]:

print g(8)


# In[14]:

s = lambda x, y: x+y
print s(3,4)


# In[16]:

print map(lambda w: len(w), 'It is raining here'.split(' '))


# In[17]:

print map(sum, [ [1, 2, 3, 4], [6, 7, 8] ])


# In[18]:

import math


# In[19]:

math.sqrt(789)


# In[20]:

math.pi


# In[21]:

pi


# In[22]:

math.pi


# In[23]:

from math import pi


# In[24]:

pi


# In[33]:

def gen_next():
    i = 0
    while(i<100):
        yield i
        i = i+1

G = gen_next()


# In[35]:

next(G)
next(G)
next(G)


# In[29]:

import math
math.sin(90)


# In[50]:

f = open('data.txt', 'a')
f.write("Hello Again\n")
#print f.read()
f.close()


# In[51]:

f = open('data.txt', 'r')
#f.write("Hello Again")
print f.read()
f.close()


# In[52]:

dir(f)


# In[53]:

class Worker:
        def __init__(self, name, pay):
                self.name = name
                self.pay = pay
        def lastName(self):
                return self.name.split()[-1]
        def giveRaise(self, percent):
                self.pay *= (1.0 + percent)

bob = Worker('Bob Smith', 50000)
sue = Worker('Sue Jones', 60000)
print bob.lastName()
print sue.lastName()
sue.giveRaise(.10)
print sue.pay


# In[ ]:



