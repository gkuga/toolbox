ボーレートいれないとなぜか表示されず

```
setenv bootargs console=ttyO0,115200n8
```

PDFからコマンドをコピーするとハイフンが全角だった部分

```
setenv bootargs console=ttyO0,115200 root=/dev/mmcblk0p2
fatload mmc 0:1 0x80200000 zImage
fatload mmc 0:1 0x80f00000 am335x-boneblack.dtb
bootz 0x80200000 - 0x80f00000
```

armadillo

```
mmc dev 1
mmc rescan
ls mmc 1:1 /boot
setenv kernel_addr_r 0x80280000
setenv fdt_addr_r    0x83000000
load mmc 1:1 ${kernel_addr_r} /boot/Image
load mmc 1:1 ${fdt_addr_r}    /boot/armadillo.dtb
setenv bootargs 'console=ttymxc1,115200 root=/dev/mmcblk1p1 rootfstype=btrfs rw rootwait'
booti ${kernel_addr_r} - ${fdt_addr_r}
```
