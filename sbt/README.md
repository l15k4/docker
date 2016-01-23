**Debian based docker image for that is primarily meant to be used as a CI testing environment for scala projects**

### If you still wanted to use it instead of installing sbt locally, do :

```
 docker run --rm -it --entrypoint=sbt -v /your/project/:/opt/project l15k4/sbt
```