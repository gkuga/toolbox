`cp -a`や`tar -xf $SRC_DIR -C $DEST_DIR`は展開先にシンボリックリンクのディレクトリがあれば実態に上書きしたりする。
rsyncだとうまくやってくれるよう。

```
rsync -aK $SRC_DIR $DEST_DIR
```
