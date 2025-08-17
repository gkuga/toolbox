```console
gh api --method POST -H "Accept: application/vnd.github.v3+json" \
-f title='title' \
-f description='description' \
/repos/<org>/<repo>/milestones
```

GHCR Login

```
gh auth login --scopes read:packages
docker login ghcr.io -u $(gh api user --jq .login) --password-stdin <<< $(gh auth token)
```
