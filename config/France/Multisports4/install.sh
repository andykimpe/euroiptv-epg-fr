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
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
fi
#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#          Welcome to the epg generator Installer          #"
echo "############################################################"
sleep 5
cd /root
mkdir -p $wwwdir/xmltv/France
cd $wwwdir/xmltv/
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
cd France
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
rm -rf Multisports4
mkdir Multisports4
cd Multisports4
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports4/Multisports4.sh -O $wwwdir/xmltv/France/Multisports4/Multisports4.sh
chmod +x $wwwdir/xmltv/France/Multisports4/Multisports4.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports4/$crondir/Multisports4 -O /etc/cron.d/Multisports4
chmod 644 /etc/cron.d/Multisports4
$wwwdir/xmltv/France/Multisports4/Multisports4.sh
