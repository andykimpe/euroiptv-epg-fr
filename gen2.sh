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
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="BFMTV.fr">
    <display-name lang="fr">|FR| BFM TV</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/bfmtv.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/BFMTV/BFMTV.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CNews.fr">
    <display-name lang="fr">|FR| CNews</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cnews.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CNEWS/CNEWS.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CStar.fr">
    <display-name lang="fr">|FR| CStar</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cstar.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CSTAR/CSTAR.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="Gulli.fr">
    <display-name lang="fr">|FR| Gulli</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/gulli.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/GULLI/GULLI.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="TF1SeriesFilms.fr">
    <display-name lang="fr">|FR| TF1 Series Films</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tf1_series_films.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/TF1SERIESFILMS/TF1SERIESFILMS.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="EquipeTV.fr">
    <display-name lang="fr">|FR| L Equipe 21</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/lequipe21.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/LEquipe21/LEquipe21.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="6ter.fr">
    <display-name lang="fr">|FR| 6Ter</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/6ter.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/6TER/6TER.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="RMCStory.fr">
    <display-name lang="fr">|FR| RMC Story</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/rmcstory.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/RMCSTORY/RMCSTORY.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="RMCdecouverte.fr">
    <display-name lang="fr">|FR| RMC Decouverte</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/rmcdecouverte.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/RMCDECOUVERTE/RMCDECOUVERTE.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="Cherie25.fr">
    <display-name lang="fr">|FR| Cherie 25</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/rmcdecouverte.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CHERIE25/CHERIE25.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="LCI.fr">
    <display-name lang="fr">|FR| LCI</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/lci.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/LCI/LCI.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="Franceinfo.fr">
    <display-name lang="fr">|FR| FRANCEINFO:</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/Franceinfo.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/FRANCEINFO/FRANCEINFO.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CANALplusCINEMA.fr">
    <display-name lang="fr">|FR| Canal+ Cinema</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalpluscinema.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlusCinema/CanalPlusCinema.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CANALplusSPORT.fr">
    <display-name lang="fr">|FR| Canal+ Sport</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalplussport.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlusSport/CanalPlusSport.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CanalplusSeries.fr">
    <display-name lang="fr">|FR| Canal+ Series</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalplusseries.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlusSeries/CanalPlusSeries.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CANAL+GrandEcran.fr">
    <display-name lang="fr">|FR| Canal+ Grand Ecran</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalplusgrandecran.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlusGrandEcran/CanalPlusGrandEcran.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="Canal+Kids.fr">
    <display-name lang="fr">|FR| Canal+ Kids</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalpluskids.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CanalPlusKids/CanalPlusKids.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CinecinemaPremier.fr">
    <display-name lang="fr">|FR| Cine+ Premier</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cinepluspremier.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CinePlusPremier/CinePlusPremier.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CinecinemaFrisson.fr">
    <display-name lang="fr">|FR| Cine+ Frisson</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusfrisson.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CinePlusFrisson/CinePlusFrisson.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CinecinemaEmotion.fr">
    <display-name lang="fr">|FR| Cine+ Emotion</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusemotion.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CinePlusEmotion/CinePlusEmotion.xml >> $wwwdir/xmltv/guide.xml
cat >> $wwwdir/xmltv/guide.xml <<EOF
  <channel id="CinecinemaFamiz.fr">
    <display-name lang="fr">|FR| Cine+ Famiz</display-name>
    <icon src="https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusfamiz.png" />
    <url>https://github.com/andykimpe/euroiptv-epg-fr</url>
  </channel>
EOF
cat $wwwdir/xmltv/France/CinePlusFamiz/CinePlusFamiz.xml >> $wwwdir/xmltv/guide.xml
