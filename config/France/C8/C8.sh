#!/usr/bin/env bash
cd /root
rm -f .sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config/France/C8/.sh
chmod +x  .sh
.sh
rm -f .sh
