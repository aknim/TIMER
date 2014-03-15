#!/usr/bin/python
#python end.py activity time

import sys
import os

print "Let's mark the end of the activity"
ddir="/tmp/timer";
#mkdir -p "${dir}";

activity=sys.argv[1]
end_time=sys.argv[2]

start_file=ddir+"/"+activity+".txt.start";
#print start_file
f = open(start_file, 'r')
start_time=f.read()
#print start_time
f.close()
command="./finish.py " + activity + " " + start_time + " " + end_time + " "
print command
os.system(command)
