```
unzip -p xxx-log.zip 'xxx/*/*.jsonl' > sensors.jsonl

cat sensors.jsonl | jq -Rr '
  try (
    fromjson |
    .sensors_data[] as $s |
    $s.signals[]?.receiver_uid as $receiver_uid |
    {
      datetime: .datetime,
      id: $s.device.id,
      temperature: (
        $s.values[] | select(.type == "temperature") | .value
      ),
    } |
    [.datetime, .id, .temperature] |
    @csv
  ) catch empty
' | sort > sensors.csv

cat sensors.csv | q -d , "SELECT C2 id, MAX(C1) FROM - GROUP BY id ORDER BY id" > last_sent.csv
```

json -> tsv

```
jq -r '
  (keys_unsorted | @tsv),
  ([.[] | tostring] | @tsv)
' data.json > data.csv
```
