#!/bin/bash
if [ -d "C:/cygwin64/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="C:/cygwin64/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
fi
cd $wwwdir/xmltv/France/M6
rm -rf *
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/M6/M6.sh -O $wwwdir/xmltv/France/M6/M6.sh
chmod +x $wwwdir/xmltv/France/M6/M6.sh
wget `wget -qO- https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/webgrabplusplusinstallurl`
tar -xvf *.tar.gz
rm -f *.tar.gz
mv .wg++/* ./
rm -f .wg++/
chmod +x install.sh
./install.sh
rm -rf siteini.pack
wget `wget -qO- https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/webgrabplusplussiteiniurl`
unzip *.zip
rm -f *.zip
rm -f WebGrab++.config.xml
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/M6/M6.xml -O $wwwdir/xmltv/France/M6/WebGrab++.config.xml
./run.sh
cp $wwwdir/xmltv/France/M6/M6.xml $wwwdir/xmltv/France/M6/M6.xml.save
gzip $wwwdir/xmltv/France/M6/M6.xml
mv $wwwdir/xmltv/France/M6/M6.xml.save $wwwdir/xmltv/France/M6/M6.xml
sed '1d' $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
sed '1d' $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
sed '1d' $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
sed '1d' $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
sed '1d' $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
sed '1d' $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
#sed '1d' /home/streamcreed/wwwdir/xmltv/France/M6/M6.xml > /home/streamcreed/wwwdir/xmltv/France/M6/M6.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/M6/M6.xml.tmp /home/streamcreed/wwwdir/xmltv/France/M6/M6.xml
head -n -1 $wwwdir/xmltv/France/M6/M6.xml > $wwwdir/xmltv/France/M6/M6.xml.tmp && mv $wwwdir/xmltv/France/M6/M6.xml.tmp $wwwdir/xmltv/France/M6/M6.xml
#sed -i 's|192.tv.telerama.fr|M6.fr|' "/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/M6/M6.xml"
chmod -R 777 $wwwdir/xmltv/France/M6/*
chown streamcreed:streamcreed $wwwdir/xmltv/France/M6/*
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
