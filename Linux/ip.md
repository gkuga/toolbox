```
ip link
ip link set eth0 down
ip addr flush dev eth0
ip link set eth0 up
ip route
ip addr show dev eth0
ip addr del 192.168.1.100/24 dev eth0
ip route add default via 192.168.1.1 dev eth0
ip addr add 192.168.1.100/24 dev eth0
```
