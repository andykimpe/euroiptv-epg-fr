#!/bin/bash
if [ -d "C:/cygwin64/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="C:/cygwin64/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
fi
cd $wwwdir/xmltv/
wget https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/installchannel.sh -O $wwwdir/xmltv/installchannel.sh
chmod +x $wwwdir/xmltv/installchannel.sh
$wwwdir/xmltv/installchannel.sh France M6
