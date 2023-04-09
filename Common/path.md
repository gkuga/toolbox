
```sh
$ basename "/foo/bar/baz.txt"
baz.txt
$ dirname "/foo/bar/baz.txt"
/foo/bar
$ pwd
/path/to/current/dir
$ realpath .
/path/to/current/dir
```

```text
${変数名#パターン}	前方一致での削除(最短マッチ)
${変数名##パターン}	前方一致での削除(最長マッチ)
${変数名%パターン}	後方一致での削除(最短マッチ)
${変数名%%パターン}	後方一致での削除(最長マッチ)
```
