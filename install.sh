#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04/18.04/20.04/22.04 Cygwin64 (Windows 10 tested)
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
elif [ "$(expr substr $(uname -s) 1 10)" == "CYGWIN_NT-" ]; then
OS=Cygwin
VER=$(uname -s |sed 's|CYGWIN_NT-||')
else
    OS=$(uname -s)
    VER=$(uname -r)
fi
ARCH=$(uname -m)

echo "Detected : $OS  $VER  $ARCH"
sleep 5
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

# Check if the user is 'root' before allowing installation to commence

if [ "$(expr substr $(uname -s) 1 10)" != "CYGWIN_NT-" ]; then
if [ $UID -ne 0 ]; then
    echo "Install failed: you must be logged in as 'root' to install."
    echo "Use command 'sudo -i', then enter root password and then try again."
    #exit 1
fi
else
usertest=$(id -G | grep -qE '\<(114|544)\>' && echo admin || echo user)
if [ $usertest == "user" ]; then
    echo "Install failed: you must be logged in as 'Administrator' to install."
    echo "Use command 'powershell.exe -command \"Start-Process C:\\cygwin64\\bin\\mintty.exe -ArgumentList '-i /Cygwin-Terminal.ico -' -Verb runas\"', then try again."
    #exit 1
fi
fi

#--- Set custom logging methods so we create a log file in the current working directory.
logfile=$(date +%Y-%m-%d_%H.%M.%S_epg_install.log)
touch "$logfile"
exec > >(tee "$logfile")
exec 2>&1

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

if [ "$OS" == "Ubuntu" ];then
cd $HOME
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
rm -f /etc/apt/sources.list.d/mono-official-stable.list
echo "deb https://download.mono-project.com/repo/ubuntu stable-$(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
apt-get update
apt-get -y dist-upgrade
apt-get install -y mono-complete wget git cron
elif [ "$(expr substr $(uname -s) 1 10)" == "CYGWIN_NT-" ]; then
cd $HOME
apt-cyg install gnupg
apt-cyg install gnupg2
apt-cyg install ca-certificates
apt-cyg install wget
apt-cyg install git
apt-cyg install cron
apt-cyg install unzip
apt-cyg install gzip
apt-cyg install tar
cron-config
fi
rm -rf $wwwdir/xmltv/
mkdir -p $wwwdir/xmltv/
cp /etc/crontab /etc/crontab.xtreamcodesinstallepg
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/genupdate.sh -O $wwwdir/xmltv/genupdate.sh
chmod +x $wwwdir/xmltv/genupdate.sh
if [ "$OS" == "Ubuntu" ];then
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/purgeiptables -O /usr/bin/purgeiptables
chmod +x /usr/bin/purgeiptables
service cron stop
elif [ "$(expr substr $(uname -s) 1 10)" == "CYGWIN_NT-" ]; then
net stop cron
fi
mkdir -p /etc/cron.d/
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/$crondir/genupdate -O /etc/cron.d/genupdate
chmod 644 /etc/cron.d/genupdate
if [ "$OS" == "Ubuntu" ];then
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/cron/purgeiptables -O /etc/cron.d/purgeiptables
chmod 644 /etc/cron.d/purgeiptables
fi
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/installfullchannell.sh)
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
if [ "$OS" == "Ubuntu" ];then
service cron start
else
net start cron
fi
