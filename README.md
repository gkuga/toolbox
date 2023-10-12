# toolbox

```sh
ss -nltu
```

svg auto width and height resizing

```svg
<svg height="100%" width="100%" viewBox="0 0 100 100"  preserveAspectRatio="none">
   <path d="M0 0 L100 0 L50 100 Z" />
</svg>
```

list npm packages from locked files
```
cat package-lock.json | jq -r '.packages | keys[] as $k | "\($k), \(.[$k] | .version)"'
```
