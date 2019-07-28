#!/bin/bash
rm -f /etc/cron.d/genupdate
rm -f /etc/cron.d/purgeiptables
rm -f /etc/cron.d/TF1
rm -f /etc/cron.d/France2
rm -f /etc/cron.d/France3
rm -f /etc/cron.d/mtvtodayde
service cron restart
rm -rf /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/ /usr/bin/purgeiptables
echo "finish uninstall"
