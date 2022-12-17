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
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/installchanneltelerama.sh -O $wwwdir/xmltv/installchanneltelerama.sh
chmod +x $wwwdir/xmltv/installchanneltelerama.sh
$wwwdir/xmltv/installchanneltelerama.sh France TF1
$wwwdir/xmltv/installchanneltelerama.sh France France2
$wwwdir/xmltv/installchanneltelerama.sh France France3
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlus
$wwwdir/xmltv/installchanneltelerama.sh France France5
$wwwdir/xmltv/installchanneltelerama.sh France M6
$wwwdir/xmltv/installchanneltelerama.sh France Arte
$wwwdir/xmltv/installchanneltelerama.sh France C8
$wwwdir/xmltv/installchanneltelerama.sh France W9
$wwwdir/xmltv/installchanneltelerama.sh France TMC
$wwwdir/xmltv/installchanneltelerama.sh France TFX
$wwwdir/xmltv/installchanneltelerama.sh France NRJ12
$wwwdir/xmltv/installchanneltelerama.sh France LCPPS
$wwwdir/xmltv/installchanneltelerama.sh France France4
$wwwdir/xmltv/installchanneltelerama.sh France BFMTV
$wwwdir/xmltv/installchanneltelerama.sh France CNEWS
$wwwdir/xmltv/installchanneltelerama.sh France CSTAR
$wwwdir/xmltv/installchanneltelerama.sh France GULLI
$wwwdir/xmltv/installchanneltelerama.sh France TF1SERIESFILMS
$wwwdir/xmltv/installchanneltelerama.sh France LEquipe21
$wwwdir/xmltv/installchanneltelerama.sh France 6TER
$wwwdir/xmltv/installchanneltelerama.sh France RMCSTORY
$wwwdir/xmltv/installchanneltelerama.sh France RMCDECOUVERTE
$wwwdir/xmltv/installchanneltelerama.sh France CHERIE25
$wwwdir/xmltv/installchanneltelerama.sh France LCI
$wwwdir/xmltv/installchanneltelerama.sh France FRANCEINFO
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlusCinema
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlusSport
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlusSeries
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlusGrandEcran
$wwwdir/xmltv/installchanneltelerama.sh France CanalPlusKids
$wwwdir/xmltv/installchanneltelerama.sh France CinePlusPremier
$wwwdir/xmltv/installchanneltelerama.sh France CinePlusFrisson
