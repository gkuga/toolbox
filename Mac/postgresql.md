
Start db for local testing.

```sh
initdb --auth=trust -D .
pg_ctl -D . -l logfile start
```
