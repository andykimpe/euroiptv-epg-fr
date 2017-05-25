#!/usr/bin/env bash
cd /root
rm -f gen.sh
wget --no-check-certificate https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh
chmod +x gen.sh
/root/gen.sh
