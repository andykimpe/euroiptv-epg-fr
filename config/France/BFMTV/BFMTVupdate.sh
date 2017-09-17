#!/bin/bash
cd /root
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV
rm -rf "WebGrab++.config.xml" "guide.xml" /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV/BFMTV.xml.gz
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/BFMTV/BFMTV.xml" -O "WebGrab++.config.xml"
./run.sh
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV/BFMTV.xml
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
