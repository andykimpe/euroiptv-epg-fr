#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Equipe/Equipe.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/Equipe.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Equipe/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
