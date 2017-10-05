#!/bin/bash
rm -f /etc/crontab
mv /etc/crontab.xtreamcodesinstallepg /etc/crontab
service cron restart
rm -rf rm -rf /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/ /usr/bin/purgeiptables
