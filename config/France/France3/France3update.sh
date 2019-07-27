#!/bin/bash
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3
rm -rf "France3TELERAMACONFIG.conf" "France3.xml" "France3.xml.gz"
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France3/France3TELERAMACONFIG.conf" -O "France3TELERAMACONFIG.conf"
tv_grab_fr_telerama.py --config-file France3TELERAMACONFIG.conf --output France3.xml --days 13
cp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.save
gzip /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.save /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed '1d' /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
head -n -1 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp && mv /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml.tmp /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml
sed -i 's|80.tv.telerama.fr|France3.fr|' "/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml"
chmod -R 777 /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/*
chown xtreamcodes:xtreamcodes /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/*
if [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
