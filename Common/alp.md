```sh
sudo cat /var/log/nginx/access.log | alp ltsv -m "/api/condition/.+,/api/isu/.+,/isu/.+"  --sort avg -r
```
