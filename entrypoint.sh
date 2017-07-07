#!/usr/bin/bash
/usr/sbin/squid -f /etc/squid/squid.conf
tail -f /var/log/squid/cache.log
