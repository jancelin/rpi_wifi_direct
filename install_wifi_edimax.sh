#!/bin/sh 
##
##
# Script d'installation du wifi direct avec dongle wifi edimax sur raspberry pi 
#
# copier ce fichier sur le rpi ou télécharger le : 
#   wget -P /home/pi https://raw.githubusercontent.com/jancelin/rpi_wifi_direct/master/install_wifi_edimax.sh
#
# atttribuer droit execution:
#   chmod +x /home/pi/install_wifi_edimax.sh
#
# Run:
#   sh /home/pi/install_wifi_edimax.sh
#-----------------------------------------------------------
sudo apt-get -y update &&

sudo  apt-get install -y hostapd unzip wget nano isc-dhcp-server &&

wget http://www.daveconroy.com/wp3/wp-content/uploads/2013/07/hostapd.zip &&

unzip hostapd.zip &&

mv /usr/sbin/hostapd /usr/sbin/hostapd.bak &&

mv hostapd /usr/sbin/hostapd.edimax &&

ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd &&

chown root.root /usr/sbin/hostapd &&

chmod 755 /usr/sbin/hostapd &&

mv /etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf.bak &&
wget -P /etc/hostapd https://raw.githubusercontent.com/jancelin/rpi_wfi_direct_edimax/master/hostapd.conf &&

mv /etc/network/interfaces /etc/network/interfaces.bak &&
wget -P /etc/network https://raw.githubusercontent.com/jancelin/rpi_wfi_direct_edimax/master/interfaces &&

mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak &&
wget -P /etc/dhcp https://raw.githubusercontent.com/jancelin/rpi_wfi_direct_edimax/master/dhcpd.conf &&

mv /etc/default/hostapd /etc/default/hostapd.bak &&
wget -P /etc/default https://raw.githubusercontent.com/jancelin/rpi_wfi_direct_edimax/master/hostapd &&

mv /etc/rc.local /etc/rc.local.bak &&
wget -P /etc https://raw.githubusercontent.com/jancelin/rpi_wfi_direct_edimax/master/rc.local &&

sudo hostapd -B /etc/hostapd/hostapd.conf &&
sudo /etc/init.d/isc-dhcp-server restart


