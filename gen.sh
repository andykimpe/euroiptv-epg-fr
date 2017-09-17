#!/usr/bin/env bash
cd /root
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="WebGrab+Plus/w MDB &amp; REX Postprocess -- version  V2.1 -- Jan van Straaten" generator-info-url="http://www.webgrabplus.com">
EOF
echo "</tv>" >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
