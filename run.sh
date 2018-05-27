#!/bin/sh
ACCOUNT=$1
PASSWORD=$2
ADAPTER=$3
MACADDRESS=$4
#==============help==================
FIRST=$1
if [ $FIRST = "-h" -o  $FIRST = "--help" ]
then
  echo "================================help====================="
  echo ""Adapter maybe is in the last line
  echo "Mac address:(example AA:BB:CC:DD:EE:FF)" 
  echo "for example:"
  echo "./run 12345678 abcabc eth0.2 AA:BB:CC:DD:EE:FF"
  exit
fi
#=============startup================
cat << EOF > /etc/init.d/startinode.sh
#!/bin/sh /etc/rc.common
START=75
start(){
  echo hello > /root/hello
  /root/run.sh $ACCOUNT $PASSWORD $ADAPTER $MACADDRESS
}
EOF
chmod +x /etc/init.d/startinode.sh
ln -s /etc/init.d/startinode.sh /etc/rc.d/S75startinode.sh
#===============Tips====================
ADAPTER=`ifconfig | grep eth | awk '{print $1}' | tail -1`
echo -e "\n\n\n===========Usage================\n\n\n"
echo -e "./run ACCOUNT PASSWORD ADAPTER MACADDRESS\n\n\n"
echo "For example:"
echo -e "\n./run 12345678 abcabc eth0.2 AA:BB:CC:DD:EE:FF\n"
echo "=============Tips: ==========="
echo "Adapter maybe $ADAPTER"
echo "Mac address:(example AA:BB:CC:DD:EE:FF)" 
#==============arg-test==============
if  [ -z $ACCOUNT ] || [ -z $PASSWORD ] || [ -z $ADAPTER ]
then
  exit 1
elif [ ! `ifconfig | grep $ADAPTER` ]
then
  echo  $ADAPTER not found
  exit 3
fi
chmod +x /root/njit-client

#============change==mac addr===================
if [ -n $MACADDRESS ]
then
  ifconfig $ADAPTER down
  ifconfig $ADAPTER hw ether $MACADDRESS
  ifconfig $ADAPTER up
else 
  echo you didn\'t input MACADDRESS
fi
#==============test arch and run=================
echo "Now you can open  browser to check if the network is available"
while true
do
	ping -c 2 114.114.114.114
	a=$?
	if test $a -eq 1
	then
		killall njit-client
		/root/njit-client $ACCOUNT $PASSWORD ${ADAPTER}
	fi
	sleep 20
done
# $1 is your account
# $2 is your password
# $3 is your adapter

