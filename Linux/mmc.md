

```
mmc extcsd read /dev/mmcblk2 | grep -i 'boot\|partition\|config'
mmc bootpart enable 1 0 /dev/mmcblk2
```
