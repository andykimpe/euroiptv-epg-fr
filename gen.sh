#!/usr/bin/env bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
fi
cd /root
rm -f $wwwdir/xmltv/guide.xml
cat > $wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="Euroiptv EPG" generator-info-url="https://github.com/andykimpe/euroiptv-epg-fr">
EOF
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="TF1.fr">
    <display-name lang="fr">|FR| TF1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/TF1/TF1.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France2.fr">
    <display-name lang="fr">|FR| France 2</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france2.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr/</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France2/France2.xml >> $wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="France3.fr">
#    <display-name lang="fr">FR France 3</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france3.png" />
#    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="CANALplus.fr">
#    <display-name lang="fr">FR Canal+</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/canal%2B.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CanalPlus/CanalPlus.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="France5.fr">
#    <display-name lang="fr">FR France 5</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france5.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France5/France5.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="M6.fr">
#    <display-name lang="fr">FR M6</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/m6.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/M6/M6.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="Arte.fr">
#    <display-name lang="fr">FR Arte</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/arte.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Arte/Arte.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="C8.fr">
#    <display-name lang="fr">FR C8</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/c8.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/C8/C8.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="W9.fr">
#    <display-name lang="fr">FR W9</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/w9.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/W9/W9.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
#cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
#  <channel id="TMC.fr">
#    <display-name lang="fr">FR TMC</display-name>
#    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tmc.png" />
#    <url>http://programme-tv.orange.fr/</url>
#  </channel>
#EOF
#cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TMC/TMC.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="Multisports1.fr">
    <display-name lang="fr">|FR| Multisports+ 1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/Multisports.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/Multisports1/Multisports2.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="Multisports2.fr">
    <display-name lang="fr">|FR| Multisports+ 2</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/Multisports.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/Multisports1/Multisports1.xml >> $wwwdir/xmltv/guide.xml
echo "</tv>" >> $wwwdir/xmltv/guide.xml
cp $wwwdir/xmltv/guide.xml $wwwdir/xmltv/guide.xml.save
rm -f $wwwdir/xmltv/guide.xml.gz
gzip $wwwdir/xmltv/guide.xml
mv $wwwdir/xmltv/guide.xml.save $wwwdir/xmltv/guide.xml
if [ -f /home/streamcreed/crons/epg.php ]
then
/home/streamcreed/php/bin/php /home/streamcreed/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/streamcreed/crons/epg_checking.php ]
then
/home/streamcreed/php/bin/php /home/streamcreed/crons/epg_checking.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
