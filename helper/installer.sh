echo "WELCOME TO THE TIMER APP!";

echo "Enter the downloaded directory location [location of timer/scripts folder]";
read location_dwnld;

echo "Enter the directory for installation";
read location_instl;

cp -r ${location_dwnld}/timer/scripts ${location_instl}/;
mkdir -p /tmp/timer/;

