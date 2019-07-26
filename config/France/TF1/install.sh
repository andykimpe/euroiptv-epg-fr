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
# stable
#wget http://webgrabplus.com/sites/default/files/download/SW/V2.1.0/WebGrabPlus_V2.1_install.tar.gz
#tar -xvf WebGrabPlus_V2.1_install.tar.gz
#rm -f WebGrabPlus_V2.1_install.tar.gz
#beta
wget "http://webgrabplus.com/sites/default/files/download/SW/V2.1.10/WebGrabPlus_V2.1.10_beta_install.tar.gz" -O "WebGrabPlus_V2.1.10_beta_install.tar.gz"
tar -xvf "WebGrabPlus_V2.1.10_beta_install.tar.gz"
rm -f "WebGrabPlus_V2.1.10_beta_install.tar.gz"
rm -rf TF1
mv .wg++ TF1
cd TF1
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
./install.sh
rm -f "siteini.user/" "siteini.pack/"
wget "http://webgrabplus.com/sites/default/files/download/ini/SiteIniPack_current.zip" -O "SiteIniPack_current.zip"
unzip SiteIniPack_current.zip
rm -f SiteIniPack_current.zip
wget "http://www.webgrabplus.com/sites/default/files/download/ini/info/zip/France_telerama-sha1.sh.zip" -O "France_telerama-sha1.sh.zip"
unzip "France_telerama-sha1.sh.zip"
rm -f "France_telerama-sha1.sh.zip"
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/TF1/TF1.sh -O /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh
chmod +x /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh
if ! grep -q "00 05 * * * root /bin/bash /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh" /etc/crontab; then
    echo "00 05 * * * root /bin/bash /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh" >> /etc/crontab;
fi
/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.sh
