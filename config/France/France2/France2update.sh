#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.save
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.gz
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
