
```
zcat -f access.log* | awk '$9 ~ /^5/ {print $4}' | cut -c 2-15 | sort | uniq -c
```
