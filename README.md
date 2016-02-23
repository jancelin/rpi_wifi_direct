Comment créer une connexion wifi direct entre votre Raspberry et un pc, tablette, smartphone, ...

Installation du wifi direct avec dongle wifi edimax sur raspberry pi 

* Connecter sa raspberry pi à internet via ethernet et brancher votre dongle Edimax

* Booter et connecter vous en SSH

* Télécharger le script:
 
```wget -P /home/pi https://raw.githubusercontent.com/jancelin/rpi_wfi_direct_edimax/master/install_wifi.sh```

 * Atttribuer droit execution:
 
```chmod +x /home/pi/install_wifi.sh```

 * Run:
 
```sh /home/pi/install_wifi.sh```
   
 * Reboot 
  
  Le signal wifi direct "GeoPoppy" est maintenant disponible. ip =  10.10.0.25
