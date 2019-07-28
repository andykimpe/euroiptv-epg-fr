#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04
# 32bit and 64bit
EPG_INSTALLER_VERSION="1.1"
#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#  Welcome to the epg generator Installer   #"
echo "############################################################"
sleep 5

rm -rf /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
cd Deutschland
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget http://webgrabplus.com/sites/default/files/download/SW/V2.1.0/WebGrabPlus_V2.1_install.tar.gz
tar -xvf WebGrabPlus_V2.1_install.tar.gz
rm -f WebGrabPlus_V2.1_install.tar.gz
mv .wg++ m.tvtoday.de
cd m.tvtoday.de
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
./instm.tvtoday.de.sh
rm -rf "siteini.pack/"
wget "http://webgrabplus.com/sites/default/files/download/ini/SiteIniPack_current.zip" -O "SiteIniPack_current.zip"
unzip SiteIniPack_current.zip
rm -f SiteIniPack_current.zip

wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/Deutschland/m.tvtoday.de/m.tvtoday.de.sh -O /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.sh
chmod +x /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/cron/France2 -O /etc/cron.d/France2
chmod 644 /etc/cron.d/France2
service cron restart
/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/Deutschland/m.tvtoday.de/m.tvtoday.de.sh
