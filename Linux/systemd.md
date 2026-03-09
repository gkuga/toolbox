
foo.path

```
[Unit]
Description=Wait for something

[Path]
PathExistsGlob=/path/to/something/*
Unit=foo.service

[Install]
WantedBy=multi-user.target
```
