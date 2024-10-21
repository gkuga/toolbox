shift-jis to utf8

```console
find ./foo -type f -name "*.txt" -exec bash -c 'iconv -f SHIFT-JIS -t UTF-8 "$0" -o "$0"' {} \;
```
