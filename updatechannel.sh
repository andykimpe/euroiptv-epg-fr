#!/bin/bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
user="streamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
user="xtreamcodes"
else
xtreamcodes="no"
wwwdir="/var/www/html"
crondir="cronapache"
user=$USER
fi
if [ ! -f "/etc/epgconfig/wgmovistarplusesprivetkey.txt" ];then
mkdir -p /etc/epgconfig/
read -e -p "enter wgmovistarplusesprivetkey : " -i "wgmovistarplusesprivetkey" wgmovistarplusesprivetkey
echo $wgmovistarplusesprivetkey > /etc/epgconfig/wgmovistarplusesprivetkey.txt
else
wgmovistarplusesprivetkey="$(cat /etc/epgconfig/wgmovistarplusesprivetkey.txt)"
fi
if [ ! -f "/etc/epgconfig/wgusernameedit.txt" ];then
mkdir -p /etc/epgconfig/
read -e -p "enter wgusernameedit : " -i "wgusernameedit" wgusernameedit
echo $wgusernameedit > /etc/epgconfig/wgusernameedit.txt
else
wgusernameedit="$(cat /etc/epgconfig/wgusernameedit.txt)"
fi
if [ ! -f "/etc/epgconfig/wgregisteredemailedit.txt" ];then
mkdir -p /etc/epgconfig/
read -e -p "enter wgregisteredemailedit : " -i "wgregisteredemailedit" wgregisteredemailedit
echo $wgregisteredemailedit > /etc/epgconfig/wgregisteredemailedit.txt
else
wgregisteredemailedit="$(cat /etc/epgconfig/wgregisteredemailedit.txt)"
fi
if [ ! -f "/etc/epgconfig/wgpasswordedit.txt" ];then
mkdir -p /etc/epgconfig/
read -e -p "enter wgpasswordedit : " -i "wgpasswordedit" wgpasswordedit
echo $wgpasswordedit > /etc/epgconfig/wgpasswordedit.txt
else
wgpasswordedit="$(cat /etc/epgconfig/wgpasswordedit.txt)"
fi
cd $wwwdir/xmltv/$1/$2
rm -rf *
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$1/$2/$2.sh -O $wwwdir/xmltv/$1/$2/$2.sh
chmod +x $wwwdir/xmltv/$1/$2/$2.sh
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
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$1/$2/$2.xml -O $wwwdir/xmltv/$1/$2/WebGrab++.config.xml
sed -i 's|wgmovistarplusesprivetkey|'$wgmovistarplusesprivetkey'|' "WebGrab++.config.xml.xml"
sed -i 's|wgusernameedit|'$wgusernameedit'|' "WebGrab++.config.xml.xml"
sed -i 's|wgregisteredemailedit|'$wgregisteredemailedit'|' "WebGrab++.config.xml.xml"
sed -i 's|wgpasswordedit|'$wgpasswordedit'|' "WebGrab++.config.xml.xml"
if [ -f "/usr/bin/mono" ]; then
    mono $wwwdir/xmltv/$1/$2/bin/WebGrab+Plus.exe $wwwdir/xmltv/$1/$2
else
$wwwdir/xmltv/$1/$2/bin/WebGrab+Plus.exe $wwwdir/xmltv/$1/$2
fi
cp $wwwdir/xmltv/$1/$2/$2.xml $wwwdir/xmltv/$1/$2/$2.xml.save
gzip $wwwdir/xmltv/$1/$2/$2.xml
mv $wwwdir/xmltv/$1/$2/$2.xml.save $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
head -n -1 $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
chmod -R 777 $wwwdir/xmltv/$1/$2/*
chown $user:$user $wwwdir/xmltv/$1/$2/*
#if [ -f /home/streamcreed/crons/epg.php ]
#then
#/home/streamcreed/php/bin/php /home/streamcreed/crons/epg.php
#elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg.php ]
#then
#/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg.php
#elif [ -f /home/streamcreed/crons/epg_checking.php ]
#then
#/home/streamcreed/php/bin/php /home/streamcreed/crons/epg_checking.php
#elif [ -f /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php ]
#then
#/home/xtreamcodes/iptv_xtream_codes/php/bin/php /home/xtreamcodes/iptv_xtream_codes/crons/epg_checking.php
#fi
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
