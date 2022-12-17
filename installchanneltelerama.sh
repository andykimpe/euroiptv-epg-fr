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
echo "channel 192 TF1;https://focus.telerama.fr/200x132/0000/00/01/clear-192.png" > $wwwdir/xmltv/France/TF1/TF1.conf
mkdir -p $wwwdir/xmltv/France/France2
echo "channel 4 France 2;https://focus.telerama.fr/200x132/0000/00/01/clear-4.png" > $wwwdir/xmltv/France/France2/France2.conf
mkdir -p $wwwdir/xmltv/France/France3
echo "channel 80 France 3;https://focus.telerama.fr/200x132/0000/00/01/clear-80.png" > $wwwdir/xmltv/France/France3/France3.conf
mkdir -p $wwwdir/xmltv/France/CanalPlus
echo "channel 34 Canal+;https://focus.telerama.fr/200x132/0000/00/01/clear-34.png" > $wwwdir/xmltv/France/CanalPlus/CanalPlus.conf
mkdir -p $wwwdir/xmltv/France/France5
echo "channel 47 France 5;https://focus.telerama.fr/200x132/0000/00/01/clear-47.png" > $wwwdir/xmltv/France/France5/France5.conf
mkdir -p $wwwdir/xmltv/France/M6
echo "channel 118 M6;https://focus.telerama.fr/200x132/0000/00/01/clear-118.png" > $wwwdir/xmltv/France/M6/M6.conf
mkdir -p $wwwdir/xmltv/France/Arte
echo "channel 111 Arte;https://focus.telerama.fr/200x132/0000/00/01/clear-111.png" > $wwwdir/xmltv/France/Arte/Arte.conf
mkdir -p $wwwdir/xmltv/France/C8
echo "channel 445 C8;https://focus.telerama.fr/200x132/0000/00/01/clear-445.png" > $wwwdir/xmltv/France/C8/C8.conf
mkdir -p $wwwdir/xmltv/France/W9
echo "channel 119 W9;https://focus.telerama.fr/200x132/0000/00/01/clear-119.png" > $wwwdir/xmltv/France/W9/W9.conf
mkdir -p $wwwdir/xmltv/France/TMC
echo "channel 195 TMC;https://focus.telerama.fr/200x132/0000/00/01/clear-195.png" > $wwwdir/xmltv/France/TMC/TMC.conf
mkdir -p $wwwdir/xmltv/France/TFX
echo "channel 446 TFX;https://focus.telerama.fr/200x132/0000/00/01/clear-446.png" > $wwwdir/xmltv/France/TFX/TFX.conf
mkdir -p $wwwdir/xmltv/France/NRJ12
echo "channel 444 NRJ 12;https://focus.telerama.fr/200x132/0000/00/01/clear-444.png" > $wwwdir/xmltv/France/NRJ12/NRJ12.conf
mkdir -p $wwwdir/xmltv/France/LCPPS
echo "channel 234 La Chaîne parlementaire;https://focus.telerama.fr/200x132/0000/00/01/clear-234.png" > $wwwdir/xmltv/France/LCPPS/LCPPS.conf
mkdir -p $wwwdir/xmltv/France/France4
echo "channel 78 France 4;https://focus.telerama.fr/200x132/0000/00/01/clear-78.png" > $wwwdir/xmltv/France/France4/France4.conf
mkdir -p $wwwdir/xmltv/France/BFMTV
echo "channel 481 BFMTV;https://focus.telerama.fr/200x132/0000/00/01/clear-481.png" > $wwwdir/xmltv/France/BFMTV/BFMTV.conf
mkdir -p $wwwdir/xmltv/France/CNEWS
echo "channel 226 CNEWS;https://focus.telerama.fr/200x132/0000/00/01/clear-226.png" > $wwwdir/xmltv/France/CNEWS/CNEWS.conf
mkdir -p $wwwdir/xmltv/France/CSTAR
echo "channel 458 CSTAR;https://focus.telerama.fr/200x132/0000/00/01/clear-458.png" > $wwwdir/xmltv/France/CSTAR/CSTAR.conf
mkdir -p $wwwdir/xmltv/France/GULLI
echo "channel 482 Gulli;https://focus.telerama.fr/200x132/0000/00/01/clear-482.png" > $wwwdir/xmltv/France/GULLI/GULLI.conf
mkdir -p $wwwdir/xmltv/France/TF1SERIESFILMS
echo "channel 1404 TF1 Séries Films;https://focus.telerama.fr/200x132/0000/00/01/clear-1404.png" > $wwwdir/xmltv/France/TF1SERIESFILMS/TF1SERIESFILMS.conf
mkdir -p $wwwdir/xmltv/France/LEquipe21
echo "channel 1401 L'Equipe;https://focus.telerama.fr/200x132/0000/00/01/clear-1401.png" > $wwwdir/xmltv/France/LEquipe21/LEquipe21.conf
mkdir -p $wwwdir/xmltv/France/6TER
echo "channel 1403 6ter;https://focus.telerama.fr/200x132/0000/00/01/clear-1403.png" > $wwwdir/xmltv/France/6TER/6TER.conf
mkdir -p $wwwdir/xmltv/France/RMCSTORY
echo "channel 1402 RMC Story;https://focus.telerama.fr/200x132/0000/00/01/clear-1402.png" > $wwwdir/xmltv/France/RMCSTORY/RMCSTORY.conf
mkdir -p $wwwdir/xmltv/France/RMCDECOUVERTE
echo "channel 1400 RMC Découverte;https://focus.telerama.fr/200x132/0000/00/01/clear-1400.png" > $wwwdir/xmltv/France/RMCDECOUVERTE/RMCDECOUVERTE.conf
mkdir -p $wwwdir/xmltv/France/CHERIE25
echo "channel 1399 Chérie 25;https://focus.telerama.fr/200x132/0000/00/01/clear-1399.png" > $wwwdir/xmltv/France/CHERIE25/CHERIE25.conf
mkdir -p $wwwdir/xmltv/France/LCI
echo "channel 112 LCI;https://focus.telerama.fr/200x132/0000/00/01/clear-112.png" > $wwwdir/xmltv/France/LCI/LCI.conf
mkdir -p $wwwdir/xmltv/France/FRANCEINFO
echo "channel 2111 Franceinfo;https://focus.telerama.fr/200x132/0000/00/01/clear-2111.png" > $wwwdir/xmltv/France/FRANCEINFO/FRANCEINFO.conf
mkdir -p $wwwdir/xmltv/France/CanalPlusCinema
echo "channel 33 Canal+ Cinéma;https://focus.telerama.fr/200x132/0000/00/01/clear-33.png" > $wwwdir/xmltv/France/CanalPlusCinema/CanalPlusCinema.conf
mkdir -p $wwwdir/xmltv/France/CanalPlusSport
echo "channel 35 Canal+ Sport;https://focus.telerama.fr/200x132/0000/00/01/clear-35.png" > $wwwdir/xmltv/France/CanalPlusSport/CanalPlusSport.conf
mkdir -p $wwwdir/xmltv/France/CanalPlusSeries
echo "channel 1563 Canal+ Séries;https://focus.telerama.fr/200x132/0000/00/01/clear-1563.png" > $wwwdir/xmltv/France/CanalPlusSeries/CanalPlusSeries.conf
mkdir -p $wwwdir/xmltv/France/CanalPlusGrandEcran
echo "channel 523 Canal+ Grand Ecran;https://focus.telerama.fr/200x132/0000/00/01/clear-523.png" > $wwwdir/xmltv/France/CanalPlusGrandEcran/CanalPlusGrandEcran.conf
mkdir -p $wwwdir/xmltv/France/CanalPlusKids
echo "channel 657 Canal+ Kids;https://focus.telerama.fr/200x132/0000/00/01/clear-657.png" > $wwwdir/xmltv/France/CanalPlusKids/CanalPlusKids.conf
mkdir -p $wwwdir/xmltv/France/CinePlusPremier
echo "channel 282 Ciné+ Premier;https://focus.telerama.fr/200x132/0000/00/01/clear-282.png" > $wwwdir/xmltv/France/CinePlusPremier/CinePlusPremier.conf
mkdir -p $wwwdir/xmltv/France/CinePlusFrisson
echo "channel 284 Ciné+ Frisson;https://focus.telerama.fr/200x132/0000/00/01/clear-284.png" > $wwwdir/xmltv/France/CinePlusFrisson/CinePlusFrisson.conf
rm -f $wwwdir/xmltv/$1/$2/$2.xml && tv_grab_fr_telerama --config-file $wwwdir/xmltv/$1/$2/$2.conf -output $wwwdir/xmltv/$1/$2/$2.xml --days 7
sed -i 's|C192.api.telerama.fr|TF1.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C4.api.telerama.fr|France2.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C80.api.telerama.fr|France3.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C34.api.telerama.fr|CANALplus.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C47.api.telerama.fr|France5.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C118.api.telerama.fr|M6.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C111.api.telerama.fr|ARTE.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C445.api.telerama.fr|C8.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C445.api.telerama.fr|C8.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C119.api.telerama.fr|W9.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C195.api.telerama.fr|TMC.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C446.api.telerama.fr|TFX.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C444.api.telerama.fr|NRJ12.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C234.api.telerama.fr|LCP.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C78.api.telerama.fr|France4.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C481.api.telerama.fr|BFMTV.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C226.api.telerama.fr|CNews.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C458.api.telerama.fr|CStar.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C482.api.telerama.fr|Gulli.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1404.api.telerama.fr|TF1SeriesFilms.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1401.api.telerama.fr|EquipeTV.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1403.api.telerama.fr|6ter.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1402.api.telerama.fr|RMCStory.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1400.api.telerama.fr|RMCdecouverte.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1399.api.telerama.fr|Cherie25.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C112.api.telerama.fr|LCI.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C2111.api.telerama.fr|Franceinfo.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C33.api.telerama.fr|CANALplusCINEMA.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C35.api.telerama.fr|CANALplusSPORT.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C1563.api.telerama.fr|CanalplusSeries.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C523.api.telerama.fr|CANAL+GrandEcran.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C657.api.telerama.fr|Canal+Kids.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C282.api.telerama.fr|CinecinemaPremier.fr|' $wwwdir/xmltv/$1/$2/$2.xml
sed -i 's|C284.api.telerama.fr|CinecinemaFrisson.fr|' $wwwdir/xmltv/$1/$2/$2.xml
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
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$1/$2/$crondir/$2 -O /etc/cron.d/$2
chmod 644 /etc/cron.d/$2
#$wwwdir/xmltv/$1/$2/$2.sh
#rm -rf $wwwdir/xmltv/$1/$2/$2.xml $wwwdir/xmltv/$1/$2/$2.xml.gz
/var/www/html/xmltv/genupdate.sh
