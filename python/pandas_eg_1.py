
# coding: utf-8

# In[1]:

import os
os.getcwd()


# In[2]:

from pandas import DataFrame, Series
import pandas as pd
import json

path = 'usagov_bitly_data2012-03-16-1331923249.txt'
records = [json.loads(line) for line in open(path)]
frame = DataFrame(records)
print frame


# In[4]:

tz_counts = frame['tz'].value_counts()


# In[5]:

tz_counts[:10]


# In[6]:

clean_tz = frame['tz'].fillna('Missing')


# In[7]:

clean_tz[clean_tz == ''] = 'Unknown'


# In[8]:

tz_counts = clean_tz.value_counts()


# In[9]:

tz_counts[:10]


# In[10]:

clean_tz


# In[11]:

tz_counts[:10].plot(kind='barh', rot=0)


# In[12]:

show()


# In[13]:

get_ipython().magic(u'matplotlib inline')


# In[14]:

tz_counts[:10].plot(kind='barh', rot=0)


# In[21]:

tz_counts[:10].plot(kind='barh', rot=1).show()


# In[16]:

cframe = frame[frame.a.notnull()]


# In[17]:

operating_system = np.where(cframe['a'].str.contains('Windows'),'Windows', 'Not Windows')


# In[18]:

import numpy as np


# In[19]:

operating_system = np.where(cframe['a'].str.contains('Windows'),'Windows', 'Not Windows')


# In[20]:

operating_system[:5]


# In[ ]:



