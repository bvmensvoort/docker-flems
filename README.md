# docker-flems

[Flems](https://github.com/porsager/flems) in a docker container.

Forked from https://github.com/ThinkR-open/docker-flems

```
docker run -p 8080:80 bvmensvoort/flems:latest
```

To provide your own `index.html`

```
docker run -p 8080:80 -v $(pwd)/index.html:/usr/src/flems/dist/index.html bvmensvoort/flems:latest
```