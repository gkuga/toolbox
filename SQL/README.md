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

### Recreate Table

```sql
-- 1. 新しいテーブルを作成
CREATE TABLE new_sample_table (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  created_at DATETIME(6) NOT NULL,
  updated_at DATETIME(6) NOT NULL,
  name VARCHAR(100) NOT NULL,
);

-- 2. データを移行
INSERT INTO new_sample_table
  (id, created_at, updated_at, name)
SELECT
  id, created_at, updated_at, name
FROM sample_table;

-- 3. 元テーブルをバックアップ・削除
RENAME TABLE sample_table TO sample_table_backup;

-- 4. 新テーブルを正式にリネーム
RENAME TABLE new_sample_table TO sample_table;

-- 5. 外部参照の張替え
```
