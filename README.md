

docker build -t wifi_direct git://github.com/jancelin/rpi_wfi_direct_edimax


docker run --restart="always" --name "wifi_direct" -d -t wifi_direct
