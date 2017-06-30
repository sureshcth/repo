
# coding: utf-8

# In[1]:

dir("")


# In[2]:

str_1 = "Hello World"
dir(str_1)


# In[4]:

print str_1.count


# In[5]:

count(str_1)


# In[10]:

str_1 = "Hello World World"
print str_1.count("World")


# In[7]:

help("hello world".count)


# In[11]:

print len("Helloooo")


# In[13]:

str_1 = "Hello World"
str_1[6] = "O"
print str_1


# In[14]:

dir("")


# In[16]:

str_1 = "Hello there are unsaved changes"
out = str_1.split("e")
print out


# In[19]:

inp = raw_input("Enter nums comma seperated ")
nums = inp.split(",")
sum_num = 0
for num in nums:
    sum_num = sum_num + int(num)
print "Sum = ", sum_num


# In[29]:

s = "HELLOOO WORLD"
print s[::2]


# In[32]:

s1 = "Hi"
s2 = "Hi"
print id(s1)
print id(s2)


# In[ ]:



