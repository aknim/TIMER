CURRENT STATUS:
# Take activity name. Check if file already exists. 
# If file exists, push the old contents down while adding the new info.
# Else, create the file and add the contents.
# Contents: comma-separated: started@, ended@, time_taken, comments. 

WHAT TO EXPECT:
## can sort on time or other things, can visualize a graph, can see if things are gettin slowed or fast.
## can filter/group data: on day, time, start time, etc
## can later add the functionality of adding comments or reasoning for higher or lower time.
## Add functionality of installing the app: Put the script in some location. Make it available. Also create /tmp/timer directory.

FOR USAGE LATER:
# USEFUL COMMANDS
# timestamp=`date`; date -d @epoch_time: eg date -d @1394535337
# awk -F"," '{print $1 $2 $3 $4 $5}'

