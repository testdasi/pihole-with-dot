# pihole-with-DoT
Official pihole docker with stubby to enable DoT (DNS over TLS). Use Google and Cloudflare DoT services by default.

### Notes:
* Remember to set pihole env DNS1 and DNS2 to use 127.2.2.2#5253 (refer to official docker parameters below).
* You can edit /etc/stubby/stubby.yml to add more services. Nano is included for your convenience ;)
* For docker parameters, refer to [official pihole docker readme](https://github.com/pi-hole/pi-hole)

