#!/usr/bin/env bash
cd /root
git clone https://github.com/andykimpe/euroiptv-epg-fr.git
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cp -f /root/euroiptv-epg-fr/logo/* /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
rm -rf /root/euroiptv-epg-fr/ /root/config.txt /root/euroiptv.xml /root/sed.sh 
#wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config.txt
#tv_grab_fr_telerama --config-file config.txt --output /root/euroiptv.xml --days 11
wget "http://racacaxtv.ga/xmltv.php" -O "/root/euroiptv.xml"
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/sed2.sh)
rm -rf /home/xtreamcodes/xmltv/
mkdir -p /home/xtreamcodes/xmltv/
cp /root/euroiptv.xml /home/xtreamcodes/xmltv/guide.xml
gzip /home/xtreamcodes/xmltv/guide.xml
chmod -R 777 /home/xtreamcodes/xmltv/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/xmltv/*
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
rm -f /root/config.txt /root/euroiptv.xml
