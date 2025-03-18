
```console
# last-modified
$ curl -I -H "If-Modified-Since: Mon, 17 Mar 2025 00:18:30 GMT"  https://example.com/path/
# ETag
$ curl -I -H "If-None-Match: \"67d76a58-fba\"" https://example.com/path/
```

