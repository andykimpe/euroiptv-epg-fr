#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04/18.04
# 32bit and 64bit
EPG_INSTALLER_VERSION="1.2"
#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#          Welcome to the epg generator Installer          #"
echo "############################################################"
sleep 5
cd /root
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France
cd /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
cd France
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
wget http://webgrabplus.com/sites/default/files/download/SW/V2.1.0/WebGrabPlus_V2.1_install.tar.gz
tar -xvf WebGrabPlus_V2.1_install.tar.gz
rm -f WebGrabPlus_V2.1_install.tar.gz
rm -rf TF1
mv .wg++ TF1
cd TF1
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
./install.sh
rm -f "siteini.user/France/telerama.fr.channels.xml" "siteini.user/France/telerama.fr.ini"
mkdir -p "siteini.user/France"
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/telerama.fr_.channels.xml" -O "siteini.user/France/telerama.fr.channels.xml"
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/telerama.fr_.ini" -O "siteini.user/France/telerama.fr.ini"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/TF1/TF1.sh -O /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh
chmod +x /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh
if ! grep -q "00 05 * * * root /bin/bash /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh" /etc/crontab; then
    echo "00 05 * * * root /bin/bash /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh" >> /etc/crontab;
fi
/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh
