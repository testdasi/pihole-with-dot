# pihole-with-DoT
Official pihole docker with stubby to enable DoT (DNS over TLS). Use Google and Cloudflare DoT services by default.

## PULL THE RIGHT TAG!
* For linux/amd64 (e.g. Unraid) -> pull testdasi/pihole-with-dot:latest-amd64
* For linux/arm/v7 (e.g. Raspberry Pi4) -> pull testdasi/pihole-with-dot:latest-rpi4 
* testdasi/pihole-with-dot:latest = testdasi/pihole-with-dot:latest-amd64

### Notes:
* Remember to set pihole env DNS1 and DNS2 to use 127.2.2.2#5253 (refer to official docker parameters below).
* You can edit /etc/stubby/stubby.yml to add more services. Nano is included for your convenience ;)
* For docker parameters, refer to [official pihole docker readme](https://github.com/pi-hole/pi-hole)
* If you like my work, [a donation to my burger fund](https://paypal.me/mersenne) is very much appreciated.

[![Donate](https://raw.githubusercontent.com/testdasi/testdasi-unraid-repo/master/donate-button-small.png)](https://paypal.me/mersenne). 

