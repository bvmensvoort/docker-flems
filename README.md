# docker-flems

[Flems](https://github.com/porsager/flems) in a docker container.


```
docker run -p 8080:80 thinkr/docker-flems:latest
```

To provide your own `index.html`

```
docker run -p 8080:80 -v $(pwd)/index.html:/usr/src/flems/dist/index.html thinkr/docker-flems:latest
```