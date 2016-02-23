#!/bin/sh 
##
##
# Script d'installation du wifi direct avec dongle wifi edimax sur raspberry pi 
#
#
#
#
#
#
#-----------------------------------------------------------
sudo apt-get -y update
sudo  apt-get install -y hostapd unzip wget nano isc-dhcp-server

wget http://www.daveconroy.com/wp3/wp-content/uploads/2013/07/hostapd.zip
unzip hostapd.zip
mv /usr/sbin/hostapd /usr/sbin/hostapd.bak
mv hostapd /usr/sbin/hostapd.edimax
ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd
chown root.root /usr/sbin/hostapd
chmod 755 /usr/sbin/hostapd

mv /etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf.bak
wget -P /etc/hostapd/hostapd.conf https://github.com/jancelin/rpi_wfi_direct_edimax/blob/master/hostapd.conf
mv /etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf.bak
wget -P /etc/network/interfaces https://github.com/jancelin/rpi_wfi_direct_edimax/blob/master/interfaces
mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak
wget -P /etc/dhcp/dhcpd.conf https://github.com/jancelin/rpi_wfi_direct_edimax/blob/master/dhcpd.conf
mv /etc/default/hostapd /etc/default/hostapd.bak
wget -P /etc/default/hostapd https://github.com/jancelin/rpi_wfi_direct_edimax/blob/master/hostapd
mv rc.local /etc/rc.local
wget -P /etc/rc.local https://github.com/jancelin/rpi_wfi_direct_edimax/blob/master/rc.local


