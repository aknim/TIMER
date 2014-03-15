# Take activity name. Check if file already exists. 
# If file exists, push the old contents down while adding the new info.
# Else, create the file and add the contents.
# Contents: comma-separated: started@, ended@, time_taken, comments. 
## can sort on time or other things, can visualize a graph, can see if things are gettin slowed or fast.
## can filter/group data: on day, time, start time, etc
## can later add the functionality of adding comments or reasoning for higher or lower time.
## Add functionality of installing the app: Put the script in some location. Make it available. Also create /tmp/timer directory.

# USEFUL COMMANDS
# timestamp=`date`; date -d @epoch_time: eg date -d @1394535337
# awk -F"," '{print $1 $2 $3 $4 $5}'

# Note the time. Check if the start time file exists. If it exists, then the new time is the end time. Take the old time, new time and write in the file as in good old days.
## May be delegate the work of writing to file, such that it can be isolately used in the above case and alno in the previous version.
## Also about splitting the file, such that the old code doesn't need to be changed. What about changing to python or to some other design oriented language. Is python design oriented?
## Learn about versioning names.
# 1) Normal timer file
# 2) Starter file: 
# 3) End file.
# 4) Manager file: 
## Note time t.
## Note name of activity. 
### If name given, good.
### If not given, than label it as Unknown and append the epoch time to it.
## Check if argument of '--start' is passed
###	--start: Take time t. Write to file <>.start. Close. [starter file]
###	--end:	 Take time t. Note the start time from <>.start. Pass the data to the normal timer file. [ender file]
###	nothing: check if starter file is there.
####	If not, tell starter is not there and noted as starter time. Pass to starter file, with noargs.
####	If starter is there, then pass to ender file, with noargs.


#LOG FILE
activity=$1;
dir="/tmp/timer";
mkdir -p "${dir}";
file="${dir}/${activity}.txt";

#TIME IT
date_command="date +%s";
start=`${date_command}`;
echo "Enter when done."
read just_wait;
end=`${date_command}`;
diff=$(( $end-$start  ));


#PRINT TIME
log_output="$start, $end, $diff";
print_output="Total time taken by '${activity}' started at '`date -d @${start}`' took ${diff} seconds "
echo "$print_output";
echo "Enter 1 line comments if any.";

read comments; echo ${comments}; if [[ -z ${comments} ]]; then comments="nil"; fi;
log_output="${log_output}, ${comments}";

#LOG TO FILE
if [ -f $file ];
then echo "Activity done before"; echo "$log_output" >>  ${file};
else echo "Activity first time"; echo "$log_output" >  ${file};
fi;
