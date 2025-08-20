
```
mkfs.ext4 -F -E  "offset=$((20480*512))" ${extlinux:+-O "^64bit"} -L rootfs_0 rootfs-installer.img "$((300*1024))"

# e.x.
sgdisk --zap-all --new "1:20480:+$((SIZE))M" -c 1:rootfs_0 rootfs-installer.img
```
