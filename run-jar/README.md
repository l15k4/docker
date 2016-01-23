**Debian based docker image for ad-hoc execution of scala/java jar file :**

```
docker run --rm -e repo=url -e group=com.example -e artifact=my-app -e version=0.1-SNAPSHOT l15k4/run-jar foo bar baz -Xmx1024m
```

Note that jar is downloaded every time you run this container! That's why it is not meant to be automated or used in production 

Rationale behind this design is avoiding the need to build a new image for every single jar you want to execute