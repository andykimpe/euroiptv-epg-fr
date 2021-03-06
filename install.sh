#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04/18.04
# 32bit and 64bit
EPG_INSTALLER_VERSION="1.3"
#--- Display the 'welcome' splash/user warning info..
echo ""
echo "###################################################################"
echo "#  Welcome to the epg generator Installer $EPG_INSTALLER_VERSION  #"
echo "###################################################################"
sleep 5
echo -e "\nChecking that minimal requirements are ok"

# Ensure the OS is compatible with the launcher
if [ -f /etc/centos-release ]; then
    OS="CentOs"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/centos-release)
    VER=${VERFULL:0:1} # return 6 or 7
elif [ -f /etc/lsb-release ]; then
    OS=$(grep DISTRIB_ID /etc/lsb-release | sed 's/^.*=//')
    VER=$(grep DISTRIB_RELEASE /etc/lsb-release | sed 's/^.*=//')
elif [ -f /etc/os-release ]; then
    OS=$(grep -w ID /etc/os-release | sed 's/^.*=//')
    VER=$(grep VERSION_ID /etc/os-release | sed 's/^.*"\(.*\)"/\1/')
 else
    OS=$(uname -s)
    VER=$(uname -r)
fi
ARCH=$(uname -m)

echo "Detected : $OS  $VER  $ARCH"
sleep 5
if [ -d "C:/cygwin64/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="C:/cygwin64/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
fi
if [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
fi

if ["$xtreamcodes" == "ok"] ; then
    echo "Ok."
else
    echo "Sorry, this OS is not supported by epg generator."
    echo "Please install Ubuntu LTS version on your main server"
    echo "and or install xtreamcodes v1 or v2"
    exit 1
fi

# Check if the user is 'root' before allowing installation to commence
if [ $UID -ne 0 ]; then
    echo "Install failed: you must be logged in as 'root' to install."
    echo "Use command 'sudo -i', then enter root password and then try again."
    exit 1
fi

#--- Set custom logging methods so we create a log file in the current working directory.
logfile=$(date +%Y-%m-%d_%H.%M.%S_epg_install.log)
touch "$logfile"
exec > >(tee "$logfile")
exec 2>&1

cd /root
if [ "$OS" == "Ubuntu" ];then
apt-get update
apt-get -y dist-upgrade
apt-get install -y mono-complete wget git cron
fi
rm -rf $wwwdir/xmltv/
mkdir -p $wwwdir/xmltv/
cp /etc/crontab /etc/crontab.xtreamcodesinstallepg
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/genupdate.sh -O $wwwdir/xmltv/genupdate.sh
chmod +x $wwwdir/xmltv/genupdate.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/purgeiptables -O /usr/bin/purgeiptables
chmod +x /usr/bin/purgeiptables
service cron stop
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/$crondir/genupdate -O /etc/cron.d/genupdate
chmod 644 /etc/cron.d/genupdate
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/cron/purgeiptables -O /etc/cron.d/purgeiptables
chmod 644 /etc/cron.d/purgeiptables
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/TF1/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France2/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France3/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/CanalPlus/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France5/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/M6/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Arte/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/C8/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/W9/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/TMC/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/NT1/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/NRJ12/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/LCPPS/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/France4/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/BFMTV/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/CNews/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/CStar/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Gulli/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports1/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports2/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports3/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports4/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports5/install.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/Multisports6/install.sh)
#bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/Deutschland/m.tvtoday.de/install.sh)
service cron start
