
```
printf '%b\n' "$(printf '%s\n' '%E3%81%82' | sed 's/%/\\x/g')"
```
