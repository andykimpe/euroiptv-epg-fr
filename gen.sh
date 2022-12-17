#!/usr/bin/env bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cron"
else
xtreamcodes="no"
wwwdir="/var/www/html"
crondir="cronapache"
fi
cat > $wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="Euroiptv EPG" generator-info-url="https://github.com/andykimpe/euroiptv-epg-fr">
EOF

bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen2.sh)

echo "</tv>" >> $wwwdir/xmltv/guide.xml
cp $wwwdir/xmltv/guide.xml $wwwdir/xmltv/guide.xml.save
rm -f $wwwdir/xmltv/guide.xml.gz
gzip $wwwdir/xmltv/guide.xml
mv $wwwdir/xmltv/guide.xml.save $wwwdir/xmltv/guide.xml
if [ -f /home/streamcreed/crons/epg.php ]
then
/home/streamcreed/php/bin/php /home/streamcreed/crons/epg.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
elif [ -f /home/streamcreed/crons/epg_checking.php ]
then
/home/streamcreed/php/bin/php /home/streamcreed/crons/epg_checking.php
elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
then
/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
fi
