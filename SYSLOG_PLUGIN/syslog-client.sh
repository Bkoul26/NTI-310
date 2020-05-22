#!/bin/bash
echo "*.info;mail.none;authpriv.none;cron.none   @logsrv" >> /etc/rsyslog.conf && systemctl restart rsyslog.service
 /etc/nagios/nrpe.conf
#Important: this should be the internal not external IP of the server or the dns name of your server.
