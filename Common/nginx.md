
After clonning nginx repository.

```
./auto/configure --with-compat --add-dynamic-module=xxx
make build
make module # buld module
mkdir logs
./objs/nginx -p $PWD -c conf/nginx.conf #  `-e stderr` for logs to stderr
./objs/nginx -s quit -p $PWD -e stderr -c conf/nginx.conf
```
