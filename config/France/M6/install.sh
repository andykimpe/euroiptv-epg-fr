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
cd $wwwdir/xmltv/
wget https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/installchannel.sh -O $wwwdir/xmltv/installchannel.sh
chmod +x $wwwdir/xmltv/installchannel.sh
$wwwdir/xmltv/installchannel.sh France M6
