
```
 SELECT TABLE_NAME, SUM(TABLE_ROWS) AS approx_rows FROM information_schema.tables WHERE TABLE_SCHEMA = '<db-name>' GROUP BY TABLE_NAME order by approx_rows;
```
