```
insmod dummy.ko
rmmod dummy
lsmod
modinfo dummy.ko
modprobe
```

通常は/lib/modules/$(uname -r)/kernel/drivers/に入れてmodprobeで読み込ませる。
depmod -aでモジュール依存関係の構築、modprobeで依存関係を解決してからロード。
insmodは一時的なテストで依存関係のチェックはされない。
/etc/modules は、ブート時に自動的に読み込むカーネルモジュールの一覧を定義するテキストファイル。
