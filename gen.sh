#!/usr/bin/env bash
cd /root
rm -f /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat > /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<tv generator-info-name="WebGrab+Plus/w MDB &amp; REX Postprocess -- version  V2.1 -- Jan van Straaten" generator-info-url="http://www.webgrabplus.com">
  <channel id="TF1.fr">
    <display-name lang="fr">TF1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tf1.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France2.fr">
    <display-name lang="fr">France 2</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france2.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France3.fr">
    <display-name lang="fr">France 3</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france3.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="CANALplus.fr">
    <display-name lang="fr">Canal+</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/canal%2B.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France5.fr">
    <display-name lang="fr">France 5</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france5.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="M6.fr">
    <display-name lang="fr">M6</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/m6.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="ARTE.fr">
    <display-name lang="fr">Arte</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/arte.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="C8.fr">
    <display-name lang="fr">C8</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/c8.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
    <channel id="W9.fr">
    <display-name lang="fr">W9</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/w9.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="TMC.fr">
    <display-name lang="fr">TMC</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/tmc.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="NT1.fr">
    <display-name lang="fr">NT1</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/nt1.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="NRJ12.fr">
    <display-name lang="fr">NRJ 12</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/nrj12.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="LCP.fr">
    <display-name lang="fr">LCP/Public Senat</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/lcp-ps.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="France4.fr">
    <display-name lang="fr">FRANCE 4</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/france4.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="BFMTV.fr">
    <display-name lang="fr">BFM TV</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/bfmtv.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
  <channel id="CNews.fr">
    <display-name lang="fr">CNews</display-name>
    <icon src="https://github.com/andykimpe/euroiptv-epg-fr/raw/master/logo/France/cnews.png" />
    <url>http://www.tv.orange.fr</url>
  </channel>
EOF









cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TF1/TF1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France2/France2.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France3/France3.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CanalPlus/CanalPlus.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France5/France5.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/M6/M6.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/Arte/Arte.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/C8/C8.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/W9/W9.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/TMC/TMC.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/NT1/NT1.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/NRJ12/NRJ12.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/LCPPS/LCPPS.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/France4/France4.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/BFMTV/BFMTV.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/France/CNews/CNews.xml >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml
cat >> /home/xtreamcodes/iptv_xtream_codes/wwwdir/xmltv/guide.xml <<EOF
</tv>
EOF
