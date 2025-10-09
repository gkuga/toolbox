```
btmgmt info
apt list -a bluez
```

アドバタイズ方法。ランダムアドレスになる。アドバタイズでパブリックアドレスを使うのは持っているドングルではできなかった。

```
sudo btmgmt advertising on
sudo btmgmt add-adv -d 02010511FF0C0F00112233445566778899AABBCCFB 1
sudo btmgmt rm-adv
sudo btmgmt advertising off
```

btmonで観測もそこそこ難しく、nrfコネクトで送っているデータでフィルタして観測できた。
