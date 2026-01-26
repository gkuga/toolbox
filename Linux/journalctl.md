
```
journalctl -b -1 | grep -iE "panic|error|fail|watchdog|oom|reboot"
journalctl -b -1 | grep -iE "reboot|shutdown"
```
