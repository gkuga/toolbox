psql -h host -U user -A -F, < foo.sql | head -n -1 | iconv -c -f utf-8 -t shift-JIS > result.csv

PSQL_PAGER=less
