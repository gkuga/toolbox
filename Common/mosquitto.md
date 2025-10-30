
 ```console
mosquitto_sub -t '$SYS/broker/subscriptions/count' -v

mosquitto_pub -h localhost \
  -t v1/test/topic \
  -f data.json
```
