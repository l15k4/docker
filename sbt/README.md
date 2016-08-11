**Debian based docker image for that is primarily meant to be used as a CI testing environment for scala projects**

If you wanted to use it instead of installing sbt locally then copy credentials like this to `/root` :
 - `.sbt/.s3credentials`
 - `.aws/credentials`
 - `.docker/config.json`

And run container this way :

```
 docker run --rm -it -w=/your/project -v /root:/root -v /your/project:/your/project l15k4/sbt
```

It will work perfectly besides `sbt-docker` plugin because you cannot run docker inside docker easily