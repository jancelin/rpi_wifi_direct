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
sudo   apt-get install -y hostapd unzip wget nano isc-dhcp-server

 wget http://www.daveconroy.com/wp3/wp-content/uploads/2013/07/hostapd.zip
 unzip hostapd.zip
 mv /usr/sbin/hostapd /usr/sbin/hostapd.bak
 mv hostapd /usr/sbin/hostapd.edimax
 ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd
 chown root.root /usr/sbin/hostapd
 chmod 755 /usr/sbin/hostapd

ADD hostapd.conf /etc/hostapd/hostapd.conf
ADD interfaces /etc/network/interfaces
ADD dhcpd.conf /etc/dhcp/dhcpd.conf
ADD hostapd /etc/default/hostapd
ADD rc.local /etc/rc.local
