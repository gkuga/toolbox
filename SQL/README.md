```sql

SELECT
    table_schema, sum(data_length+index_length) /1024 /1024 AS MB
FROM
    information_schema.tables
GROUP BY
    table_schema
ORDER BY
    sum(data_length+index_length) DESC;
    
SELECT  
    table_name, engine, table_rows AS tbl_rows,
    avg_row_length AS rlen,  
    floor((data_length+index_length)/1024/1024) AS all_mb,
    floor((data_length)/1024/1024) AS data_mb,
    floor((index_length)/1024/1024) AS index_mb
FROM 
    information_schema.tables  
WHERE
    table_schema=database()  
ORDER BY
    (data_length+index_length) DESC;  
```
