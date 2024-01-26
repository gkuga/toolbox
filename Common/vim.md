
```console
git grep flutter_test | awk -F':' '{print $1}' | xargs -o vim -p
```
