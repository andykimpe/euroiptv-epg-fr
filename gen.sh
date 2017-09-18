#!/usr/bin/env bash
cd /root
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="WebGrab+Plus/w MDB &amp; REX Postprocess -- version  V2.1 -- Jan van Straaten" generator-info-url="http://www.webgrabplus.com">
EOF
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="TF1.fr">
    <display-name lang="fr">TF1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="France2.fr">
    <display-name lang="fr">France 2</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="France3.fr">
    <display-name lang="fr">France 3</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="CANALplus.fr">
    <display-name lang="fr">Canal+</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CanalPlus/CanalPlus.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="France5.fr">
    <display-name lang="fr">France 5</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France5/France5.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="M6.fr">
    <display-name lang="fr">M6</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/M6/M6.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="ARTE.fr">
    <display-name lang="fr">Arte</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Arte/Arte.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="C8.fr">
    <display-name lang="fr">C8</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/C8/C8.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="W9.fr">
    <display-name lang="fr">W9</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/W9/W9.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="TMC.fr">
    <display-name lang="fr">TMC</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TMC/TMC.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="NT1.fr">
    <display-name lang="fr">NT1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/NT1/NT1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="NRJ12.fr">
    <display-name lang="fr">NRJ 12</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/NRJ12/NRJ12.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="LCP.fr">
    <display-name lang="fr">LCP/Public Senat</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="France4.fr">
    <display-name lang="fr">France 4</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France4/France4.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="BFMTV.fr">
    <display-name lang="fr">BFM TV</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV/BFMTV.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="CNews.fr">
    <display-name lang="fr">CNews</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CNews/CNews.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="CStar.fr">
    <display-name lang="fr">CStar</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CStar/CStar.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="Gulli.fr">
    <display-name lang="fr">Gulli</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Gulli/Gulli.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
  <channel id="FranceO.fr">
    <display-name lang="fr">France O</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://tv.orange.fr</url>
  </channel>
EOF
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/FranceO/FranceO.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
echo "</tv>" >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
