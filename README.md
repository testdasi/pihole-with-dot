# pihole-with-DoT
Official pihole docker with stubby to enable DoT (DNS over TLS). Use Google and Cloudflare DoT services by default.
This is deprecated in favour of [Pihole DoT DoH](https://hub.docker.com/r/testdasi/pihole-dot-doh) but depending on mood, I may rebuild this periodically.

### Notes:
* Multi-arch image. Docker should automatically determine the right architecture to pull.
* Remember to set pihole env DNS1 and DNS2 to use 127.2.2.2#5253 (refer to official docker parameters below).
* You can edit /etc/stubby/stubby.yml to add more services. Nano is included for your convenience ;)
* For docker parameters, refer to [official pihole docker readme](https://github.com/pi-hole/pi-hole)
* If you like my work, [a donation to my burger fund](https://paypal.me/mersenne) is very much appreciated.

[![Donate](https://raw.githubusercontent.com/testdasi/testdasi-unraid-repo/master/donate-button-small.png)](https://paypal.me/mersenne). 

