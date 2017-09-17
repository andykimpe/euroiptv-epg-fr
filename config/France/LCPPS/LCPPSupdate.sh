#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/LCPPS/LCPPS.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
