
```console
cat server.pem intermediate.pem > fullchain.pem
openssl verify -CAfile root.pem fullchain.pem
```

```console
openssl x509 -in filename.pem -text -noout
```
