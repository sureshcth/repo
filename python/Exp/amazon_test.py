'''
# Read input from stdin and provide input before running code

name = raw_input('What is your name?\n')
print 'Hi, %s.' % name
'''

numString = raw_input().strip()

numInp = int(raw_input().strip())

for i in range(0, numInp):
	index = [ int(i) for i in raw_input().strip().split(' ') ]
	index_1 = index[0]-1
	index_2 = index[1]-1
	print index_1
	print index_2
	if(index_1 == index_2):
		num = int(numString[index_1])
	else:
		num = int(numString[index_1 : index_2+1])	
	print num
	if(num % 7 == 0):
		print "YES"
	else:
		print "NO"
