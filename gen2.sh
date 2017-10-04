#!/usr/bin/env bash
cd /root
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="WebGrab+Plus/w MDB &amp; REX Postprocess -- version  V2.1 -- Jan van Straaten" generator-info-url="http://www.webgrabplus.com">
EOF
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="TF1.fr">
    <display-name lang="fr">TF1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="France2.fr">
    <display-name lang="fr">France 2</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml.save
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml.gz
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
echo "</tv>" >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
