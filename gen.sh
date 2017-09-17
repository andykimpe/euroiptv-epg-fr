#!/usr/bin/env bash
cd /root
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="WebGrab+Plus/w MDB &amp; REX Postprocess -- version  V2.1 -- Jan van Straaten" generator-info-url="http://www.webgrabplus.com">
  <channel id="TF1.fr">
    <display-name lang="fr">TF1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France2.fr">
    <display-name lang="fr">France 2</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france2.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France3.fr">
    <display-name lang="fr">France 3</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france3.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="CANALplus.fr">
    <display-name lang="fr">Canal+</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/canal%2B.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France5.fr">
    <display-name lang="fr">France 5</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france5.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="M6.fr">
    <display-name lang="fr">M6</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/m6.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
EOF









cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CanalPlus/CanalPlus.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France5/France5.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/M6/M6.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
</tv>
EOF
