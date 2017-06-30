
# coding: utf-8

# In[1]:

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


# In[3]:

s = pd.Series([1,3,5,np.nan,6,8])
s


# In[4]:

dates = pd.date_range('20130101', periods=6)
dates


# In[8]:

df = pd.DataFrame(np.random.randn(6,4), index=dates, columns = list('ABCD'))
df


# In[10]:

df.head(2)


# In[11]:

df.tail(2)


# In[12]:

df.index


# In[13]:

df.values


# In[14]:

df.columns


# In[15]:

df.describe()


# In[16]:

df.T


# In[18]:

df.sort_index(axis=1, ascending = True)


# In[19]:

df.sort_values(by='C')


# In[20]:

df['A']


# In[21]:

df[0:3]


# In[ ]:



