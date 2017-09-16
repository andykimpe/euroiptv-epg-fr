#!/bin/bash
cd /root
git clone https://github.com/andykimpe/euroiptv-epg-fr.git
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cp -f /root/euroiptv-epg-fr/logo/* /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/TF1
rm -rf "WebGrab++.config.xml" "guide.xml" "/root/euroiptv-epg-fr"
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/TF1.xml" -O "WebGrab++.config.xml"
./run.sh
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/TF1/TF1.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/TF1/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/TF1/*
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
