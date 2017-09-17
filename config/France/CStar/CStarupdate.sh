#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/CStar/CStar.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
