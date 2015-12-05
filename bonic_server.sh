#!/bin/bash
#
#Autheor:Viking Warlock
#Last Modify:2015-12-05
#


echo -e "-----------------------------------------------"
echo -e "| Viking Warlock's BONIC  auto install script |"
echo -e "|                                             |"
echo -e "|                Ubuntu Only                  |"
echo -e "|                                             |"
echo -e "|             Please Hold On ...              |"
echo -e "-----------------------------------------------"
echo
sleep 1
echo -e "\033[40;31mInstall Environment...\033[0m"
sudo apt-get install ia32-libs libstdc++6 libstdc++5 freeglut3 -y
echo -e "\033[40;31mInstall Bonic Client...\033[0m"
sudo apt-get install boinc-client -y
echo -e "\033[40;31mWriting Start Code...\033[0m"
sleep 1
boinccmd --project_attach http://boinc.bakerlab.org/rosetta 946190a5f134adb1ac31cb3d65eedab8
boinccmd --project http://boinc.bakerlab.org/rosetta update
sudo service boinc-client start
wget -O "boinc.bash" "http://boinc.berkeley.edu/trac/wiki/BashCommandCompletion?format=txt"
source boinc.bash
echo -e "\033[40;34mDone !\033[0m"
