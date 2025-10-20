
```console
git tag --sort=-v:refname | head -n 1
```

```console
git fetch upstream
git diff upstream/master..origin/master
git merge <commit-id | tag> --no-ff 
```
