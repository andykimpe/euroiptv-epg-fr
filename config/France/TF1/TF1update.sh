#!/bin/bash
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1
rm -rf "WebGrab++.config.xml" "TF1.xml" "TF1.xml.gz"
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/TF1/TF1TELERAMACONFIG.conf" -O "TF1TELERAMACONFIG.conf"
tv_grab_fr_telerama.py --config-file TF1TELERAMACONFIG.conf --output TF1.xml --days 13
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml
sed -i 's|192.tv.telerama.fr|TF1.fr|' "/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml"
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
