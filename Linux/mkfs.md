
```
mkfs.ext4 -F -E  "offset=$((20480*512))" ${extlinux:+-O "^64bit"} -L rootfs_0 "rootfs-installer.img" "$((300*1024))"
```
