#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04/18.04
# 32bit and 64bit
EPG_INSTALLER_VERSION="1.3"
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
#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#          Welcome to the epg generator Installer          #"
echo "############################################################"
sleep 5
mkdir -p $wwwdir/xmltv/$1
cd $wwwdir/xmltv/
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
cd $1
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
rm -rf $2
mkdir $2
cd $2
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$1/$2/$2.sh -O $wwwdir/xmltv/$1/$2/$2.sh
chmod +x $wwwdir/xmltv/$1/$2/$2.sh
sed -i "s|wgcountry|"$1"|g" $wwwdir/xmltv/$1/$2/$2.sh
sed -i "s|wgchannel|"$2"|g" $wwwdir/xmltv/$1/$2/$2.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$1/$2/$crondir/$2 -O /etc/cron.d/$2
chmod 644 /etc/cron.d/$2
$wwwdir/xmltv/$1/$2/$2.sh
