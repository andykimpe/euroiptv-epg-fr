#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/Deutschland/m.tvtoday.de/m.tvtoday.de.xml" -O "WebGrab++.config.xml"
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml
./run.sh
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(curl -L -Ss https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland.xml
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland.xml
