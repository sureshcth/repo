
# coding: utf-8

# In[6]:

import numpy as np
a = np.array([[1,2,3],[4,5,6]])
print a[1,2]


# In[7]:

dir(a)


# In[17]:

a = np.full((2, 2), 7)


# In[18]:

a


# In[21]:

a = np.arange(12)


# In[22]:

a


# In[23]:

a.reshape((3, 2, 2))


# In[30]:

a = np.array([[1,2],[3,4],[5,6]])
b = a*2
print b


# In[32]:

a = np.array([[1,2,3],[4,5,6],[7,8,9],[10,11,12]])
b = np.array([0,2,0,1])


# In[33]:

print a[np.arange(4),b]


# In[34]:

a = np.array([ [1, 2, 3], [4,5,6]])


# In[35]:

a


# In[36]:

b = np.array([[1, 2], [2, 3], [4, 5]])


# In[37]:

b


# In[38]:

a.shape


# In[39]:

b.shape


# In[40]:

c = np.dot(a, b)


# In[41]:

c


# In[ ]:



