#!/bin/bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cron"
else
xtreamcodes="no"
wwwdir="/var/www/html"
crondir="cronapache"
fi
cd
rm -f /etc/cron.d/genupdate
rm -f /etc/cron.d/purgeiptables
rm -f /etc/cron.d/TF1
rm -f /etc/cron.d/France2
rm -f /etc/cron.d/France3
rm -f  /etc/cron.d/CanalPlus
rm -f /etc/cron.d/France5
rm -f /etc/cron.d/M6
rm -f /etc/cron.d/Arte
rm -f /etc/cron.d/C8
rm -f /etc/cron.d/W9
rm -f /etc/cron.d/TMC
rm -f /etc/cron.d/TFX
rm -f /etc/cron.d/NRJ12
rm -f /etc/cron.d/LCPPS
rm -f /etc/cron.d/France4
rm -f /etc/cron.d/BFMTV
rm -f /etc/cron.d/CNEWS
rm -f /etc/cron.d/CSTAR
rm -f /etc/cron.d/GULLI
rm -f /etc/cron.d/TF1SERIESFILMS
rm -f /etc/cron.d/LEquipe21
rm -f /etc/cron.d/6TER
rm -f /etc/cron.d/RMCSTORY
rm -f /etc/cron.d/RMCDECOUVERTE
rm -f /etc/cron.d/CHERIE25
rm -f /etc/cron.d/LCI
rm -f /etc/cron.d/FRANCEINFO
rm -f /etc/cron.d/CanalPlusCinema
rm -f /etc/cron.d/CanalPlusSport
rm -f /etc/cron.d/CanalPlusSeries
rm -f /etc/cron.d/CanalPlusGrandEcran
rm -f /etc/cron.d/CanalPlusKids
rm -f /etc/cron.d/CinePlusPremier
rm -f /etc/cron.d/CinePlusFrisson
service cron restart
rm -rf $wwwdir/xmltv/ /usr/bin/purgeiptables
echo "finish uninstall"
