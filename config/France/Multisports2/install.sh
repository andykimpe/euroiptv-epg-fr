#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04/18.04
# 32bit and 64bit
EPG_INSTALLER_VERSION="1.3"
#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#          Welcome to the epg generator Installer          #"
echo "############################################################"
sleep 5
cd /root
mkdir -p /home/streamcreed/wwwdir/xmltv/France
cd /home/streamcreed/wwwdir/xmltv/
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
cd France
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
rm -rf Multisports2
mkdir Multisports2
cd Multisports2
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports2/Multisports2.sh -O /home/streamcreed/wwwdir/xmltv/France/Multisports2/Multisports2.sh
chmod +x /home/streamcreed/wwwdir/xmltv/France/Multisports2/Multisports2.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports2/cron/Multisports2 -O /etc/cron.d/Multisports2
chmod 644 /etc/cron.d/Multisports2
service cron restart
/home/streamcreed/wwwdir/xmltv/France/Multisports2/Multisports2.sh

