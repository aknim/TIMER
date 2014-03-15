#!/usr/bin/python
import sys
import time
import os

print "Let's just finish it off. Let's log it!!"
activity=sys.argv[1];
ddir="/tmp/timer";
#mkdir -p "${dir}";
finish_file=ddir+"/"+activity+".txt";

start_time=sys.argv[2];
end_time=sys.argv[3];
diff=str(float(end_time)-float(start_time))


#PRINT TIME
log_output=start_time+","+ end_time+","+ diff;
start_date=time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime(float(start_time)))
print_output="Total time taken by "+activity+" started at "+start_date+" took "+diff+" seconds "
print print_output
print "Enter 1 line comments if any.";

comment=sys.stdin.readline()
if comment=="\n":  comment="nil"

log_output=log_output+","+comment
print log_output
if os.path.isfile(finish_file): 
 print "Activity done before"; 
 f=open(finish_file,'a')
else:
 f=open(finish_file,'w')
 print "Activity first time"; 
f.write(log_output)
f.close()
 
#LOG TO FILE
#if [ -f $file ];
#then echo "Activity done before"; echo "$log_output" >>  ${file};
#else echo "Activity first time"; echo "$log_output" >  ${file};
#fi;
