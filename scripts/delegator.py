#!/usr/bin/python
import sys
import time
import os

time=time.time()

print "WELOME TO THE TIMER APPLICATION. MAY IT HELP YOU LOG YOUR TIME BETTER!!"
l=len(sys.argv)
if l == 1:
 activity="unknown"+str(time)
else:
 activity=sys.argv[1]

#print time 
#print activity
print l 
if l == 3:
 flag=sys.argv[2]
else:
 command="./intelligent.py "+ activity+" "+ str(time)
 #command="./timer.sh "+activity
 os.system(command)
 sys.exit(0)
if flag=="s": #start
 command="./start.py "+activity+" "+str(time)
elif flag=="e": #en
 command="./end.py "+activity+" "+str(time) 

os.system(command)
