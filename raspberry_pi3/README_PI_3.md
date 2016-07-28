***Wifi direct Raspberry Pi 3***

scripted of this method: https://frillip.com/using-your-raspberry-pi-3-as-a-wifi-access-point-with-hostapd/

Use with Hypriot OS Barbossa (include Docker): https://downloads.hypriot.com/hypriotos-rpi-v0.8.0.img.zip

* connect to raspberry pi 3 with ssh
* run commands

```
sudo -s

wget -P /home/pirate https://raw.githubusercontent.com/jancelin/rpi_wifi_direct/master/raspberry_pi3/install_wifi_direct_rpi3.sh; chmod +x /home/pirate/install_wifi_direct_rpi3.sh; bash -x /home/pirate/install_wifi_direct_rpi3.sh
```

* reboot
* enjoy
________________________________________________________

* After reboot, connect your pc, phone,... to te wifi "GeoPoppy_Pi3"
* password: geopoppy
* ip of raspberry pi wifi : 172.24.1.1
* hotplug ethernet
* hotspot wifi
