```sh
cat /proc/sys/fs/inotify/max_user_watches
echo fs.inotify.max_user_watches=24288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```
