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
