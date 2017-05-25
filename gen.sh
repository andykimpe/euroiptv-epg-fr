#!/usr/bin/env bash
cd /root
git clone https://github.com/andykimpe/euroiptv-epg-fr.git
rm -rf /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
mkdir -p /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
cp /root/euroiptv-epg-fr/logo* /home/xtreamcodes/iptv_xtream_codes/wwwdir/logo/
rm -rf /root/euroiptv-epg-fr/ /root/config.txt
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config.txt
tv_grab_fr_telerama --config-file config.txt --output /root/euroiptv.xml --days 14
