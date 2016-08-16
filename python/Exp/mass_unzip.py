import os, sys, gzip
path="/parses/"
filelist=os.listdir(path)
filelist.sort()
op=open("output.txt")
for file in filelist:
	if file.endswith(".gz"):
		sys.stderr.write(file + "\n")
		with gzip.open(path+file, 'rb') as f:
			file = f.read()
			op.write(file+"\n")