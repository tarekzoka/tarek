#!/bin/sh
# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL tarek
# ###########################################
#
# Command: wget https://raw.githubusercontent.com/tarekzoka/tarek/main/installer.sh -qO - | /bin/sh 
#
# ###########################################


###########################################
MY_URL="https://raw.githubusercontent.com/tarekzoka/tarek/main/"  
echo " remove old channel "
# Remove any Channel  # 
rm -rf /etc/enigma2/lamedb 
rm -rf /etc/enigma2/*list 
rm -rf /etc/enigma2/*.tv rm -rf /etc/enigma2/*.radio 
rm -rf /etc/tuxbox/*.xml 
echo " download and install channel "
wget -O /var/volatile/tmp/channels_backup_romeh_2021_09_09.tar.gz "https://raw.githubusercontent.com/tarekzoka/tarek/main/channels_backup_romeh_2021_09_09.tar.gz"
wait
tar xzvpf /tmp/channels_backup_romeh_2021_09_09.tar.gz  -C /
wait
sleep 2;
echo "" 
echo "" 
echo "" "*********************************************************" 
echo "# Channel And INSTALLED SUCCESSFULLY #"
echo "          UPLOADED BY zz_DD "
echo " "*********************************************************" 
echo "# your Device will RESTART Now #" echo "****************************************"
wait 2
init 4
init 3
exit 0