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
cd $wwwdir/xmltv/France/France2
rm -rf *
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2.sh -O $wwwdir/xmltv/France/France2/France2.sh
chmod +x $wwwdir/xmltv/France/France2/France2.sh
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
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2.xml -O $wwwdir/xmltv/France/France2/WebGrab++.config.xml
if [ -f "/usr/bin/mono" ]; then
    mono $wwwdir/xmltv/France/France2/bin/WebGrab+Plus.exe $wwwdir/xmltv/France/France2
else
$wwwdir/xmltv/France/France2/bin/WebGrab+Plus.exe $wwwdir/xmltv/France/France2
fi
cp $wwwdir/xmltv/France/France2/France2.xml $wwwdir/xmltv/France/France2/France2.xml.save
gzip $wwwdir/xmltv/France/France2/France2.xml
mv $wwwdir/xmltv/France/France2/France2.xml.save $wwwdir/xmltv/France/France2/France2.xml
sed '1d' $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
sed '1d' $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
sed '1d' $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
sed '1d' $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
sed '1d' $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
sed '1d' $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
#sed '1d' /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml > /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp && mv /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml.tmp /home/streamcreed/wwwdir/xmltv/France/France2/France2.xml
head -n -1 $wwwdir/xmltv/France/France2/France2.xml > $wwwdir/xmltv/France/France2/France2.xml.tmp && mv $wwwdir/xmltv/France/France2/France2.xml.tmp $wwwdir/xmltv/France/France2/France2.xml
#sed -i 's|192.tv.telerama.fr|France2.fr|' "/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml"
chmod -R 777 $wwwdir/xmltv/France/France2/*
chown streamcreed:streamcreed $wwwdir/xmltv/France/France2/*
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

