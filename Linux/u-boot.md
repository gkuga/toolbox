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
