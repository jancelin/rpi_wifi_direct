#!/bin/sh 




sudo apt-get install dnsmasq hostapd &&
wget -P /etc https://raw.githubusercontent.com/jancelin/rpi_wifi_direct/master/raspberry_pi3/dhcpcd.conf &&
wget -P /etc/network/interfaces.d https://raw.githubusercontent.com/jancelin/rpi_wifi_direct/master/raspberry_pi3/wlan0 &&

