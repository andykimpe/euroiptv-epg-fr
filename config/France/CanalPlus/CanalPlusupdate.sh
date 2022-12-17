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
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/updatechannel.sh -O $wwwdir/xmltv/updatechannel.sh
chmod +x $wwwdir/xmltv/updatechannel.sh
$wwwdir/xmltv/updatechannel.sh France CanalPlus
