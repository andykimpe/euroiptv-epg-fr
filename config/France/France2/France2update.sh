#!/bin/bash
cd /home/streamcreed/wwwdir/xmltv/France/France2
rm -rf *
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2.sh -O /home/streamcreed/wwwdir/xmltv/France/France2/France2.sh
chmod +x /home/streamcreed/wwwdir/xmltv/France/France2/France2.sh
#wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2TELERAMACONFIG.conf" -O "France2TELERAMACONFIG.conf"
#tv_grab_fr_telerama.py --config-file France2TELERAMACONFIG.conf --output France2.xml --days 13
wget http://webgrabplus.com/sites/default/files/download/SW/V3.1.0/WebGrabPlus_V3.1_install.tar.gz
tar -xvf WebGrabPlus_V3.1_install.tar.gz
rm -f WebGrabPlus_V3.1_install.tar.gz
mv .wg++/* ./
rm -f .wg++/
chmod +x install.sh
./install.sh
wget http://webgrabplus.com/sites/default/files/download/ini/SiteIni.Pack_2021.02.11_231100.zip
rm -rf siteini.pack sportklub.hr.channels.xml sportklub.hr.ini starhubtvplus.com.E.ini
unzip SiteIni.Pack_2021.02.11_231100.zip
rm -f WebGrab++.config.xml
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2.xml -O /home/streamcreed/wwwdir/xmltv/France/France2/WebGrab++.config.xml
./run.sh
cp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.save
gzip /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.save /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
head -n -1 /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
#sed -i 's|192.tv.telerama.fr|France2.fr|' "/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml"
chmod -R 777 /home/streamcreed/wwwdir/xmltv/France/France2/*
chown streamcreed:streamcreed /home/streamcreed/wwwdir/xmltv/France/France2/*
if [ -f /home/streamcreed/crons/epg.php ]
then
/home/streamcreed/php/bin/php /home/streamcreed/crons/epg.php
elif [ -f /home/streamcreed/crons/epg_checking.php ]
then
/home/streamcreed/php/bin/php /home/streamcreed/crons/epg_checking.php
fi
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)

