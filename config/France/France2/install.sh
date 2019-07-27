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
rm -rf France2
mkdir France2
cd France2
wget --no-check-certificate "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/index.php" -O "index.php"
apt-get -y install python python-minimal python2.7-minimal python3-minimal python3.6-minimal
apt-get -y install python-pip python3-pip
apt-get -y install python-lxml python3-lxml
rm -f /usr/bin/python
ln -s /usr/bin/python3.6 /usr/bin/python
rm -f /usr/bin/pip
ln -s /usr/bin/pip3 /usr/bin/pip
pip install pytz
apt-get -y install python-html2text python3-html2text
wget https://github.com/melmorabity/tv_grab_fr_telerama/raw/master/tv_grab_fr_telerama.py -O /usr/bin/tv_grab_fr_telerama.py
chmod +x /usr/bin/tv_grab_fr_telerama.py
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2TELERAMACONFIG.conf
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/France2.sh -O /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.sh
chmod +x /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.sh
if ! grep -q "00 05 * * * root /bin/bash /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.sh" /etc/crontab; then
    echo "00 05 * * * root /bin/bash /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.sh" >> /etc/crontab;
fi
/home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.sh
