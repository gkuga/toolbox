
After clonning nginx repository.

```
./auto/configure --with-compat --add-dynamic-module=xxx
make build
make module # buld module
mkdir logs
./objs/nginx -p $PWD -e stderr -c conf/nginx.conf
./objs/nginx -s quit -p $PWD -e stderr -c conf/nginx.conf
```
