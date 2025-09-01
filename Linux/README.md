
```
iostat -x 1
dstat --disk
docker stats
```

kernel version check before build

```
make -s kernelrelease ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
```
