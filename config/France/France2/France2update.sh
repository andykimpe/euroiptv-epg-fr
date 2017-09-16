#!/bin/bash
cd /root
git clone https://github.com/andykimpe/euroiptv-epg-fr.git
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cp -f /root/euroiptv-epg-fr/logo/* /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France2
rm -rf "WebGrab++.config.xml" "guide.xml" "/root/euroiptv-epg-fr" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France2/France2.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France2/France2.xml" -O "WebGrab++.config.xml"
./run.sh
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France2/France2.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France2/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France2/*
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
