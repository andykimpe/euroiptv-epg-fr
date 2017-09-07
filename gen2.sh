#!/bin/bash
cd /root
git clone https://github.com/andykimpe/euroiptv-epg-fr.git
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cp -f /root/euroiptv-epg-fr/logo/* /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cd /root/wg++
rm -rf "WebGrab++.config.xml" "guide.xml" "/root/euroiptv-epg-fr"
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/WebGrab%2B%2B.config.xml"
touch /root/wg++/./guide.xml
./run.sh
rm -rf /home/xtreamcodes/xmltv/
mkdir -p /home/xtreamcodes/xmltv/
cp /root/wg++/guide.xml /home/xtreamcodes/xmltv/guide.xml
gzip /home/xtreamcodes/xmltv/guide.xml
chmod -R 777 /home/xtreamcodes/xmltv/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/xmltv/*
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
