
```perl
find apps/ -type f -exec perl -p -i -e s/xxx/yyy/g {} \;
```

改行
```perl
perl -pi -e 's/\r//g' /path/to/directory/*
```
