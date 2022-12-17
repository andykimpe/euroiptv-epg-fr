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
cd /var/www/html/xmltv/$1/$2
mkdir -p $wwwdir/xmltv/France/TF1
echo "channel 192 TF1;https://focus.telerama.fr/500x500/0000/00/01/clear-192.png" > $wwwdir/xmltv/France/TF1/TF1.conf
mkdir -p $wwwdir/xmltv/France/France2
echo "channel 4 France 2;https://focus.telerama.fr/500x500/0000/00/01/clear-4.png" > $wwwdir/xmltv/France/France2/France2.conf
mkdir -p $wwwdir/xmltv/France/France3
echo "channel 80 France 3;https://focus.telerama.fr/500x500/0000/00/01/clear-80.png" > $wwwdir/xmltv/France/France3/France3.conf
mkdir -p $wwwdir/xmltv/France/CanalPlus
echo "channel 34 Canal+;https://focus.telerama.fr/500x500/0000/00/01/clear-34.png" > $wwwdir/xmltv/France/CanalPlus/CanalPlus.conf
mkdir -p $wwwdir/xmltv/France/France5
echo "channel 47 France 5;https://focus.telerama.fr/500x500/0000/00/01/clear-47.png" > $wwwdir/xmltv/France/France5/France5.conf
mkdir -p $wwwdir/xmltv/France/M6
echo "channel 118 M6;https://focus.telerama.fr/500x500/0000/00/01/clear-118.png" > $wwwdir/xmltv/France/M6/M6.conf
rm -f $wwwdir/xmltv/$1/$2/$2.xml && tv_grab_fr_telerama --config-file $wwwdir/xmltv/$1/$2/$2.conf -output $wwwdir/xmltv/$1/$2/$2.xml --days 7
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep xml)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep generator-info-name)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep channel)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep display)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep icon)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep url)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
testline=$(head -n 1 $wwwdir/xmltv/$1/$2/$2.xml | tail -n 1 | grep channel)
if [[ $testline != "" ]];then
sed '1d' $wwwdir/xmltv/$1/$2/$2.xml > $wwwdir/xmltv/$1/$2/$2.xml.tmp && mv $wwwdir/xmltv/$1/$2/$2.xml.tmp $wwwdir/xmltv/$1/$2/$2.xml
fi
sed -i 's|C192.api.telerama.fr|TF1.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C4.api.telerama.fr|France2.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C80.api.telerama.fr|France3.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C34.api.telerama.fr|CANALplus.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C47.api.telerama.fr|France5.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C118.api.telerama.fr|M6.fr|' $wwwdir/xmltv/$1/$2/$2.xml
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$1/$2/$crondir/$2 -O /etc/cron.d/$2
chmod 644 /etc/cron.d/$2
#$wwwdir/xmltv/$1/$2/$2.sh
#rm -rf $wwwdir/xmltv/$1/$2/$2.xml $wwwdir/xmltv/$1/$2/$2.xml.gz
/var/www/html/xmltv/genupdate.sh
