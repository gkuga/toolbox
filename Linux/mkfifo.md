
```bash
#!/bin/bash

mkfifo pipe_tee pipe_lzop pipe_xxh pipe_wc

cat < pipe_lzop > out_lzop &
cat < pipe_xxh > out_xxh &
cat < pipe_wc > out_wc &

tee pipe_lzop pipe_xxh > pipe_wc < pipe_tee &

echo "Hello, tee sample!" > pipe_tee

sleep 1
echo "pipe_lzop: $(cat out_lzop)"
echo "pipe_xxh:  $(cat out_xxh)"
echo "pipe_wc:   $(cat out_wc)"

rm -f pipe_tee pipe_lzop pipe_xxh pipe_wc out_lzop out_xxh out_wc
```
