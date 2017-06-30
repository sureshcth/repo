
# coding: utf-8

# In[1]:

get_ipython().magic(u'matplotlib inline')
import numpy as np


# In[2]:

x = np.array([[1, 2, 3], [4, 5, 6]], np.int32)


# In[3]:

type(x)


# In[4]:

dir(x)


# In[23]:

x.shape


# In[7]:

x.strides


# In[8]:

x.data


# In[9]:

x.itemsize


# In[10]:

x.nbytes


# In[11]:

x.base


# In[12]:

x.flags


# In[13]:

x.real


# In[14]:

x.imag


# In[15]:

x.T


# In[16]:

x


# In[17]:

x.flat


# In[18]:

x


# In[19]:

x.ctypes


# In[20]:

np.all([[True,False],[True,True]])


# In[22]:

np.all([[True,False],[True,True]], axis=1)


# In[ ]:



