#!/usr/bin/env bash
cd /root
cat > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="WebGrab+Plus/w MDB &amp; REX Postprocess -- version  V2.1 -- Jan van Straaten" generator-info-url="http://www.webgrabplus.com">
  <channel id="TF1.fr">
    <display-name lang="fr">tF1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
</tv>
EOF
