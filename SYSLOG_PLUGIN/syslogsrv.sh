#!/bin/bash
sed -i 's/#$UDPServerRun 514/$UDPServerRun 514/g' /etc/rsyslog.conf
sed -i 's/#$InputTCPServerRun 514/$InputTCPServerRun 514/g' /etc/rsyslog.conf
sed -i 's/#$ModLoad imtcp/$ModLoad imtcp/g' /etc/rsyslog.conf
sed -i 's/#$ModLoad imudp/$ModLoad imudp/g' /etc/rsyslog.conf
setenforce 0
netstat -antup | grep 514
cat /etc/rsyslog.conf | sort
state=$(systemctl status rsyslog | grep Active | awk '{print $2}')
inactive="inactive"
active="active"
failed="failed"

if [ $state == $active ]; then
      echo "STATUS:UP"
      exit 0;

   elif [ $state == $inactive ]; then
      echo "STATUS:WARNING"
      exit 1;
      
    elif [ $state == $failed ]; then
      echo "STATUS:CRITICAL"
      exit 2;

else
   echo "STATUS:UNKNOWN"
   exit 3;

fi
state=$(systemctl status rsyslog | grep Inactive | awk '{print $3}')
if [ $state == $active ]; then
      echo "STATUS:UP"
      exit 0;

   elif [ $state == $inactive ]; then
      echo "STATUS:WARNING"
      exit 1;
      
    elif [ $state == $failed ]; then
      echo "STATUS:CRITICAL"
      exit 2;

else
   echo "STATUS:UNKNOWN"
   exit 3;
state=$(systemctl status rsyslog | grep Failed | awk '{print $4}')
if [ $state == $active ]; then
      echo "STATUS:UP"
      exit 0;

   elif [ $state == $inactive ]; then
      echo "STATUS:WARNING"
      exit 1;
      
    elif [ $state == $failed ]; then
      echo "STATUS:CRITICAL"
      exit 2;

else
   echo "STATUS:UNKNOWN"
   exit 3;
   netstat -antup | grep 514
state=$(systemctl status rsyslog | grep UNKNOWN | awk '{print $5}')
if [ $state == $active ]; then
      echo "STATUS:UP"
      exit 0;

   elif [ $state == $inactive ]; then
      echo "STATUS:WARNING"
      exit 1;
      
    elif [ $state == $failed ]; then
      echo "STATUS:CRITICAL"
      exit 2;

else
   echo "STATUS:UNKNOWN"
   exit 3;
