#!/bin/bash
#sed -i 's|<display-name>TF1.mycanal.fr</display-name>|<display-name>TF1</display-name>|' "/root/euroiptv.xml"
#sed -i 's|channel="TF1.mycanal.fr"|channel="TF1"|' "/root/euroiptv.xml"
sed -i 's|TF1.mycanal.fr|TF1.fr|' "/root/euroiptv.xml"
sed -i 's|FRANCE 2.mycanal.fr|France2.fr|' "/root/euroiptv.xml"
sed -i 's|FRANCE 3.mycanal.fr|France3.fr|' "/root/euroiptv.xml"
