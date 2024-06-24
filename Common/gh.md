```console
gh api --method POST -H "Accept: application/vnd.github.v3+json" \
-f title='title' \
-f description='description' \
/repos/<org>/<repo>/milestones
```
