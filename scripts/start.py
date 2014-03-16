#!/usr/bin/python
#python starter.py activity time

import sys
print "Let's mark the start of the acitivity!"
ddir="/tmp/timer";
#mkdir -p "${dir}";

activity=sys.argv[1]
start_time=sys.argv[2]

start_file=ddir+"/"+activity+".txt.start";
f = open(start_file, 'w')
f.write(start_time)
f.close()
