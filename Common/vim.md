
```console
grep xxx | awk -F':' '{print $1}' | xargs -o vim -p
```
