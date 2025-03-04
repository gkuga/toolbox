
[遅いクエリ
](https://docs.pingcap.com/ja/tidb/stable/information-schema-slow-query)

```
select time, query_time, left(query, 300) from information_schema.cluster_slow_query where is_internal = false order
by query_time desc limit 200;
```

```
mysql> select tidb_version()\G
*************************** 1. row ***************************
tidb_version(): Release Version: v7.5.0
Edition: Community
Git Commit Hash: 069631e2ecfedc000ffb92c67207bea81380f020
Git Branch: heads/refs/tags/v7.5.0
UTC Build Time: 2023-11-24 08:50:14
GoVersion: go1.21.3
Race Enabled: false
Check Table Before Drop: false
Store: tikv
1 row in set (0.02 sec)
```

```
 SELECT user, host, db, command, time, state FROM INFORMATION_SCHEMA.PROCESSLIST;
```
