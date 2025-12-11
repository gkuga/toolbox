
```
ps -ef --forest
watch -n 5 "ps -o pid,rss,vsz,comm -p 178975"
watch -n 5 "ps -o pid,rss,vsz,comm -p $(pgrep <process name>)"
```
