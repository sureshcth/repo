

a = ["a", "b", "c" , "a", "a", "a", "b", "c"]

dict = {}

for e in a:
	if(dict.has_key(e)):
		dict[e] += 1
	else:
		dict[e] = 1

print dict
