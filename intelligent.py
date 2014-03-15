#!/usr/bin/python
#python end.py activity time

import sys
import os

"Hmmm...Need to be intelligent to figure this one o.O"
ddir="/tmp/timer";

activity=sys.argv[1]
time=sys.argv[2]

start_file=ddir+"/"+activity+".txt.start"
if os.path.isfile(start_file):
 #pass to end
 print "Ending the activity"
 command="./end.py "+activity+" "+time
else:
 #pass to start
 print "Starting the activity"
 command="./start.py "+ activity+" "+ time

os.system(command)
