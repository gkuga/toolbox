
```
cd /etc/wireguard
wg genkey > client.key
wg pubkey < client.key > client.pub
```

```
cat wg0.conf 
[Interface]
Address = 192.168.100.100/32
PrivateKey = <private-key>

[Peer]
PublicKey = <public-key>
EndPoint = xxx.yyy.zzz:443
AllowedIPs = 192.168.100.1/32
PersistentKeepalive = 25
```
