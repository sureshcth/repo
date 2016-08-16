#!/anaconda/bin/python

import numpy as np
arr = np.array([10, 400, 5000, 81])

print arr
print type(arr)

print arr.dtype

arr_1 = np.array(10, 3, 56, 6, float)

arr_2 = np.array([[15, 22, 31], [42, 52, 62]], float)

print arr_2[0,0]

print arr_2.shape

arr_3 = np.array(range(100), float)
arr_4 = arr_3.reshape((5, 2))

arr_5 = arr_4.copy()

arr_5.fill(0)

