#!/bin/bash
# installateur pour epg de euroiptv
# Supported Operating Systems: 
# Ubuntu server 12.04/14.04/16.04/18.04
# 32bit and 64bit
EPG_INSTALLER_VERSION="1.3"
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
rm f $wwwdir/xmltv/gen2.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config-example/gen2.sh -O $wwwdir/xmltv/gen2.sh
rm f $wwwdir/xmltv/installfullchannell.sh
wget https://github.com/andykimpe/euroiptv-epg-fr/raw/master/config-example/installfullchannell.sh -O $wwwdir/xmltv/installfullchannell.sh
./addchannel.sh fr France TF1 "|FR| TF1" canalsat.fr 312 TF1.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tf1.png
./addchannel.sh fr France France2 "|FR| France 2" canalsat.fr 26 France2.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france2.png
./addchannel.sh fr France France3 "|FR| France 3" canalsat.fr 543 France3.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france3.png
./addchannel.sh fr France CanalPlus "|FR| Canal+" canalsat.fr 601 CANALplus.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canal%2B.png
./addchannel.sh fr France France5 "|FR| France 5" canalsat.fr 545 France5.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france5.png
./addchannel.sh fr France M6 "|FR| M6" canalsat.fr 313 M6.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/m6.png
./addchannel.sh fr France Arte "|FR| Arte" canalsat.fr 154 ARTE.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/arte.png
./addchannel.sh fr France C8 "|FR| C8" canalsat.fr 450 C8.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/c8.png
./addchannel.sh fr France W9 "|FR| W9" canalsat.fr 296 W9.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/w9.png
./addchannel.sh fr France TMC "|FR| TMC" canalsat.fr 584 TMC.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tmc.png
./addchannel.sh fr France TFX "|FR| TFX" canalsat.fr 570 TFX.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tfx.png
./addchannel.sh fr France NRJ12 "|FR| NRJ 12" canalsat.fr 568 NRJ12.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/nrj12.png
./addchannel.sh fr France LCPPS "|FR| LCP/Public Senat" canalsat.fr 554 LCP.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/lcp-ps.png
./addchannel.sh fr France France4 "|FR| France 4" canalsat.fr 544 France4.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/france4.png
./addchannel.sh fr France BFMTV "|FR| BFM TV" canalsat.fr 633 BFMTV.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/bfmtv.png
./addchannel.sh fr France CNEWS "|FR| CNews" canalsat.fr 480 CNews.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cnews.png
./addchannel.sh fr France CSTAR "|FR| CStar" canalsat.fr 513 CStar.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cstar.png
./addchannel.sh fr France GULLI "|FR| Gulli" canalsat.fr 549 Gulli.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/gulli.png
./addchannel.sh fr France TF1SERIESFILMS "|FR| TF1 Series Films" canalsat.fr 526 TF1SeriesFilms.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/tf1_series_films.png
./addchannel.sh fr France LEquipe21 "|FR| L Equipe 21" canalsat.fr 451 EquipeTV.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/lequipe21.png
./addchannel.sh fr France 6TER "|FR| 6Ter" canalsat.fr 521 6ter.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/6ter.png
./addchannel.sh fr France RMCSTORY "|FR| RMC Story" canalsat.fr 571 RMCStory.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/rmcstory.png
./addchannel.sh fr France RMCDECOUVERTE "|FR| RMC Decouverte" canalsat.fr 595 RMCdecouverte.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/rmcdecouverte.png
./addchannel.sh fr France CHERIE25 "|FR| Cherie 25" canalsat.fr 440 Cherie25.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/rmcdecouverte.png
./addchannel.sh fr France LCI "|FR| LCI" canalsat.fr 553 LCI.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/lci.png
./addchannel.sh fr France FRANCEINFO "|FR| FRANCEINFO:" canalsat.fr 670 Franceinfo.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/Franceinfo.png
./addchannel.sh fr France CanalPlusCinema "|FR| Canal+ Cinema" canalsat.fr 198 CANALplusCINEMA.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalpluscinema.png
./addchannel.sh fr France CanalPlusSport "|FR| Canal+ Sport" canalsat.fr 177 CANALplusSPORT.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalplussport.png
./addchannel.sh fr France CanalPlusSeries "|FR| Canal+ Series" canalsat.fr 481 CanalplusSeries.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalplusseries.png
./addchannel.sh fr France CanalPlusGrandEcran "|FR| Canal+ Grand Ecran" canalsat.fr 900 CANAL+GrandEcran.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalplusgrandecran.png
./addchannel.sh fr France CanalPlusKids "|FR| Canal+ Kids" canalsat.fr 259 Canal+Kids.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/canalpluskids.png
./addchannel.sh fr France CinePlusPremier "|FR| Cine+ Premier" canalsat.fr 322 CinecinemaPremier.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cinepluspremier.png
./addchannel.sh fr France CinePlusFrisson "|FR| Cine+ Frisson" canalsat.fr 398 CinecinemaFrisson.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusfrisson.png
./addchannel.sh fr France CinePlusEmotion "|FR| Cine+ Emotion" canalsat.fr 396 CinecinemaEmotion.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusemotion.png
./addchannel.sh fr France CinePlusFamiz "|FR| Cine+ Famiz" canalsat.fr 533 CinecinemaFamiz.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusfamiz.png
./addchannel.sh fr France CinePlusClub "|FR| Cine+ Club" canalsat.fr 532 CinecinemaClub.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusclub.png
./addchannel.sh fr France CinePlusClassic "|FR| Cine+ Classic" canalsat.fr 531 CinecinemaClassic.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/cineplusclassic.png
./addchannel.sh fr France OCSMax "|FR| OCS Max" ocs.fr 85-max OrangeCinemax.fr https://raw.githubusercontent.com/andykimpe/euroiptv-epg-fr/master/logo/France/ocsmax.png
