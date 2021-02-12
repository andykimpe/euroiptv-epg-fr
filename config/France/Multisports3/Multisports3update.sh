#!/bin/bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
fi
cd $wwwdir/xmltv/France/Multisports3
rm -rf *
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports3/Multisports3.sh -O $wwwdir/xmltv/France/Multisports3/Multisports3.sh
chmod +x $wwwdir/xmltv/France/Multisports3/Multisports3.sh
#wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports3/Multisports3TELERAMACONFIG.conf" -O "Multisports3TELERAMACONFIG.conf"
#tv_grab_fr_telerama.py --config-file Multisports3TELERAMACONFIG.conf --output Multisports3.xml --days 13
wget http://webgrabplus.com/sites/default/files/download/SW/V3.1.0/WebGrabPlus_V3.1_install.tar.gz
tar -xvf WebGrabPlus_V3.1_install.tar.gz
rm -f WebGrabPlus_V3.1_install.tar.gz
mv .wg++/* ./
rm -f .wg++/
chmod +x install.sh
./install.sh
rm -rf siteini.pack
wget http://webgrabplus.com/sites/default/files/download/ini/SiteIni.Pack_2021.02.11_231100.zip
unzip SiteIni.Pack_2021.02.11_231100.zip
rm -f WebGrab++.config.xml
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports3/Multisports3.xml -O $wwwdir/xmltv/France/Multisports3/WebGrab++.config.xml
./run.sh
cp $wwwdir/xmltv/France/Multisports3/Multisports3.xml $wwwdir/xmltv/France/Multisports3/Multisports3.xml.save
gzip $wwwdir/xmltv/France/Multisports3/Multisports3.xml
mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.save $wwwdir/xmltv/France/Multisports3/Multisports3.xml
sed '1d' $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
sed '1d' $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
sed '1d' $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
sed '1d' $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
sed '1d' $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
sed '1d' $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
#sed '1d' /home/streamcreed/wwwdir/xmltv/France/Multisports3/Multisports3.xml > /home/streamcreed/wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp /home/streamcreed/wwwdir/xmltv/France/Multisports3/Multisports3.xml
head -n -1 $wwwdir/xmltv/France/Multisports3/Multisports3.xml > $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp && mv $wwwdir/xmltv/France/Multisports3/Multisports3.xml.tmp $wwwdir/xmltv/France/Multisports3/Multisports3.xml
#sed -i 's|192.tv.telerama.fr|Multisports3.fr|' "/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Multisports3/Multisports3.xml"
chmod -R 777 $wwwdir/xmltv/France/Multisports3/*
chown streamcreed:streamcreed $wwwdir/xmltv/France/Multisports3/*
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
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)