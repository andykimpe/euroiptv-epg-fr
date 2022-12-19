#!/usr/bin/env bash
cd
bash <(wget -qO- https://github.com/andykimpe/euroiptv-epg-fr/raw/master/gen.sh)
echo "$(date)" > /var/log/genupdate
