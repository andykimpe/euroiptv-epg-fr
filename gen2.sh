#!/usr/bin/env bash
if [ -d "/home/streamcreed" ];then
xtreamcodes="ok"
wwwdir="/home/streamcreed/wwwdir"
crondir="cronstreamcreed"
elif [ -d "/home/xtreamcodes/iptv_xtream_codes" ];then
xtreamcodes="ok"
wwwdir="/home/xtreamcodes/iptv_xtream_codes/wwwdir"
crondir="cronstreamcreed"
else
xtreamcodes="no"
wwwdir="/var/www/html"
crondir="cronapache"
fi
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="TF1.fr">
    <display-name lang="fr">|FR| TF1</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tf1.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/TF1/TF1.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France2.fr">
    <display-name lang="fr">|FR| France 2</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france2.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France2/France2.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France3.fr">
    <display-name lang="fr">|FR| France 3</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france3.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France3/France3.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CANALplus.fr">
    <display-name lang="fr">|FR| Canal+</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canal%2B.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlus/CanalPlus.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France5.fr">
    <display-name lang="fr">|FR| France 5</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france5.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France5/France5.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="M6.fr">
    <display-name lang="fr">|FR| M6</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/m6.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/M6/M6.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="ARTE.fr">
    <display-name lang="fr">|FR| Arte</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/arte.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/Arte/Arte.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="C8.fr">
    <display-name lang="fr">|FR| C8</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/c8.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/C8/C8.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="W9.fr">
    <display-name lang="fr">|FR| W9</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/w9.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/W9/W9.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="TMC.fr">
    <display-name lang="fr">|FR| TMC</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tmc.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/TMC/TMC.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="TFX.fr">
    <display-name lang="fr">|FR| TFX</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tfx.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/TFX/TFX.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="NRJ12.fr">
    <display-name lang="fr">|FR| NRJ 12</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/nrj12.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/NRJ12/NRJ12.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="LCP.fr">
    <display-name lang="fr">|FR| LCP/Public Senat</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/lcp-ps.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/LCPPS/LCPPS.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="France4.fr">
    <display-name lang="fr">|FR| France 4</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france4.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/France4/France4.xml >> $wwwdir/xmltv/guide.xml
