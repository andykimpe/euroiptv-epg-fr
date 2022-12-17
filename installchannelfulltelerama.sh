#!/bin/bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
user="streamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
user="xtreamcodes"
else
xtreamcodes="no"
wwwdir="/var/www/html"
crondir="cronapache"
user=$USER
fi
cd $wwwdir/xmltv
$wwwdir/xmltv/installchanneltelerama.sh France TF1
$wwwdir/xmltv/installchanneltelerama.sh France France2
$wwwdir/xmltv/installchanneltelerama.sh France France3
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlus
$wwwdir/xmltv/installchanneltelerama.sh France France5
$wwwdir/xmltv/installchanneltelerama.sh France M6
$wwwdir/xmltv/installchanneltelerama.sh France Arte
