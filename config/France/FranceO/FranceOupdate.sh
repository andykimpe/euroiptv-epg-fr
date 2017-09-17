#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/FranceO/FranceO.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
