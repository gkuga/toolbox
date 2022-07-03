
List listening ports and programs using netstat

```sh
sudo lsof -i -P | grep LISTEN
sudo netstat -pant | grep LISTEN
```
