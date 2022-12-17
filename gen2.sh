#!/usr/bin/env bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
else
xtreamcodes="no"
wwwdir="/var/www/html"
crondir="cronapache"
fi
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="TF1.fr">
    <display-name lang="fr">|FR| TF1</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tf1.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/TF1/TF1.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France2.fr">
    <display-name lang="fr">|FR| France 2</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france2.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France2/France2.xml >> $wwwdir/xmltv/guide.xml
