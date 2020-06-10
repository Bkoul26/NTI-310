#!/bin/bash
state=$(systemctl status rsyslog | grep -c Active/Inactive/Failed | awk '{print $2}')
inactive="inactive"
active="active"
failed="failed"


if [systemctl status rsyslog | grep -c Active = 1]; then
    echo "STATUS: UP"
    exit 0;
elif [systemctl status rsyslog | grep -c Inactive = 1]; then
    echo "STATUS: WARNING"
    exit 1;
elif [systemctl status rsyslog | grep -c Failed = 1]; then
    echo "STATUS: CRITICAL"
    exit 2;
else
    echo "STATUS: UNKNOWN"
    exit 3;





-----------------------------

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
