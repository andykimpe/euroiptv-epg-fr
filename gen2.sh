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
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France3.fr">
    <display-name lang="fr">|FR| France 3</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france3.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France3/France3.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CANALplus.fr">
    <display-name lang="fr">|FR| Canal+</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canal%2B.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlus/CanalPlus.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France5.fr">
    <display-name lang="fr">|FR| France 5</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france5.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France5/France5.xml >> $wwwdir/xmltv/guide.xml
