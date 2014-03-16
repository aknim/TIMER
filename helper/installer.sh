echo "WELCOME TO THE TIMER APP!";
echo "Enter the directory for installation";
read location;

cp -r ../scripts ${location}/;
mkdir -p /tmp/timer/;

