#!/bin/bash
#./addchannel.sh fr France France4 "France 4" canalsat.fr 544 France4.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france4.png
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
#read -e -p "Enter Laguage name 2 letter: " -i "fr" lang
lang="$1"
#read -e -p "Enter Country name no space: " -i "France" country
country="$2"
#read -e -p "Enter Channel name no space: " -i "France4" channelfolder
channelfolder="$3"
#read -e -p "Enter Channel name include space: " -i "France 4" channelname
channelname="$4"
#read -e -p "Enter site: " -i "canalsat.fr" site
site="$5"
#read -e -p "Enter site_id: " -i "544" siteid
siteid="$6"
#read -e -p "Enter EPG_id: " -i "France4.fr" epgid
epgid="$7"
#read -e -p "Enter icon URL: " -i "https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france4.png" iconurl
iconurl="$8"
rm -rf config/$country/$channelfolder/
mkdir -p config/$country/$channelfolder/cronstreamcreed
mkdir -p config/$country/$channelfolder/cron
mkdir -p config/$country/$channelfolder/cronapache
#cat config/France/TF1/cronstreamcreed/TF1 > config/$country/$channelfolder/cronstreamcreed/$channelfolder
cat config-example/contry/channel/cronstreamcreed/channel > config/$country/$channelfolder/cronstreamcreed/$channelfolder
#cat config/France/TF1/cron/TF1 > config/$country/$channelfolder/cron/$channelfolder
cat config-example/contry/channel/cron/channel > config/$country/$channelfolder/cron/$channelfolder
#cat config/France/TF1/cronapache/TF1 > config/$country/$channelfolder/cronapache/$channelfolder
cat config-example/contry/channel/cronapache/channel > config/$country/$channelfolder/cronapache/$channelfolder
#cat config/France/TF1/install.sh > config/$country/$channelfolder/install.sh
cat config-example/contry/channel/install.sh > config/$country/$channelfolder/install.sh
#cat config/France/TF1/TF1.sh > config/$country/$channelfolder/$channelfolder.sh
cat config-example/contry/channel/channel.sh > config/$country/$channelfolder/$channelfolder.sh
#cat config/France/TF1/TF1.xml > config/$country/$channelfolder/$channelfolder.xml
cat config-example/contry/channel/channel.xml > config/$country/$channelfolder/$channelfolder.xml
#cat config/France/TF1/TF1update.sh > config/$country/$channelfolder/"$channelfolder"update.sh
cat config-example/contry/channel/channelupdate.sh > config/$country/$channelfolder/"$channelfolder"update.sh
sed -i 's|wgcountry|'$country'|' config/$country/$channelfolder/cron/$channelfolder
#sed -i 's|France|'$country'|' config/$country/$channelfolder/cronapache/$channelfolder
sed -i 's|wgcountry|'$country'|' config/$country/$channelfolder/cronapache/$channelfolder
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/cronstreamcreed/$channelfolder
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/cronstreamcreed/$channelfolder
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/cronstreamcreed/$channelfolder
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/cronstreamcreed/$channelfolder
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/cron/$channelfolder
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/cron/$channelfolder
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/cron/$channelfolder
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/cron/$channelfolder
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/cronapache/$channelfolder
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/cronapache/$channelfolder
#sed -i 's|France|'$country'|' config/$country/$channelfolder/$channelfolder.sh
sed -i 's|wgcountry|'$country'|' config/$country/$channelfolder/$channelfolder.sh
#sed -i 's|France|'$country'|' config/$country/$channelfolder/$channelfolder.sh
sed -i 's|wgcountry|'$country'|' config/$country/$channelfolder/$channelfolder.sh
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/$channelfolder.sh
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/$channelfolder.sh
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/$channelfolder.sh
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/$channelfolder.sh
#sed -i 's|France|'$country'|' config/$country/$channelfolder/"$channelfolder"update.sh
sed -i 's|wgcountry|'$country'|' config/$country/$channelfolder/"$channelfolder"update.sh
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/"$channelfolder"update.sh
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/"$channelfolder"update.sh
#sed -i 's|France|'$country'|' config/$country/$channelfolder/install.sh
sed -i 's|wgcountry|'$country'|' config/$country/$channelfolder/install.sh
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/install.sh
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/install.sh
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/install.sh
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/install.sh
#sed -i 's|France|'$channelfolder'|' config/$country/$channelfolder/install.sh
sed -i 's|wgcountry|'$channelfolder'|' config/$country/$channelfolder/install.sh
#sed -i 's|France|'$channelfolder'|' config/$country/$channelfolder/install.sh
sed -i 's|wgcountry|'$channelfolder'|' config/$country/$channelfolder/install.sh
#sed -i 's|TF1.xml|'$channelfolder'.xml|' config/$country/$channelfolder/$channelfolder.xml
sed -i 's|TF1.xml|'$channelfolder'.xml|' config/$country/$channelfolder/$channelfolder.xml
#sed -i 's|site="canalsat.fr" site_id=|site="'$site'" site_id=|' config/$country/$channelfolder/$channelfolder.xml
sed -i 's|site="wgsite" site_id=|site="'$site'" site_id=|' config/$country/$channelfolder/$channelfolder.xml
#sed -i 's|site_id="312" xmltv_id=|site_id="'$siteid'" xmltv_id=|' config/$country/$channelfolder/$channelfolder.xml
sed -i 's|site_id="wgsiteid" xmltv_id=|site_id="'$siteid'" xmltv_id=|' config/$country/$channelfolder/$channelfolder.xml
#sed -i 's|xmltv_id="TF1.fr"|xmltv_id="'$epgid'"|' config/$country/$channelfolder/$channelfolder.xml
sed -i 's|xmltv_id="wgxmltvid"|xmltv_id="'$epgid'"|' config/$country/$channelfolder/$channelfolder.xml
#sed -i 's|TF1|'$channelfolder'|' config/$country/$channelfolder/$channelfolder.xml
sed -i 's|wgchannel|'$channelfolder'|' config/$country/$channelfolder/$channelfolder.xml
cat >> gen2.sh <<EOM
cat >> \$wwwdir/xmltv/guide.xml <<EOF
  <channel id="$epgid">
    <display-name lang="$lang">$channelname</display-name>
    <icon src="$iconurl" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat \$wwwdir/xmltv/$country/$channelfolder/$channelfolder.xml >> \$wwwdir/xmltv/guide.xml
EOM
cat >> installfullchannell.sh <<EOF
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/$country/$channelfolder/install.sh)
EOF
git add --all *
git commit -a -m "add news channel"
git push origin master
