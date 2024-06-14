
[遅いクエリ
](https://docs.pingcap.com/ja/tidb/stable/information-schema-slow-query)

```
select time, query_time, left(query, 300) from information_schema.cluster_slow_query where is_internal = false order
by query_time desc limit 200;
```
