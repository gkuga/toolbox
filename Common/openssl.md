
```sh
openssl rand 64
openssl rand -help
Usage: rand [flags] num
Valid options are:
 -help               Display this summary
 -out outfile        Output file
 -rand val           Load the file(s) into the random number generator
 -writerand outfile  Write random data to the specified file
 -base64             Base64 encode output
 -hex                Hex encode output
 -engine val         Use engine, possibly a hardware device
```

```console
openssl s_client -connect <domain> -showcerts
```
