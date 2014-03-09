date_command="date +%s";
start=`${date_command}`;
echo "Enter when done."
swait=`read`;
end=`${date_command}`;
echo "$start - $end";
echo $(( $end-$start  ));
