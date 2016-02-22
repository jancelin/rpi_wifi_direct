FROM resin/rpi-raspbian
MAINTAINER ancelin julien 
RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl

RUN apt-get -y update
RUN  apt-get install -y hostapd unzip wget isc-dhcp-server

RUN wget http://www.daveconroy.com/wp3/wp-content/uploads/2013/07/hostapd.zip
RUN unzip hostapd.zip
RUN mv /usr/sbin/hostapd /usr/sbin/hostapd.bak
RUN mv hostapd /usr/sbin/hostapd.edimax
RUN ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd
RUN chown root.root /usr/sbin/hostapd
RUN chmod 755 /usr/sbin/hostapd

ADD hostapd.conf /etc/hostapd/hostapd.conf
ADD interfaces /etc/network/interfaces
ADD dhcpd.conf /etc/dhcp/dhcpd.conf
ADD hostapd /etc/default/hostapd

