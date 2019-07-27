#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/Deutschland/all/all.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/all/all.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland.xml
