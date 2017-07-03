FROM java:8
MAINTAINER Jakub Liska liska.jakub@gmail.com

ENV SBT_VERSION 0.13.15
ENV SBT_JAR https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch.jar
ADD  $SBT_JAR  /usr/local/bin/sbt-launch.jar
COPY sbt.sh    /usr/local/bin/sbt

RUN echo "Initiating SBT at docker image build time ..." && sbt

VOLUME [ "/app" ]
WORKDIR /app

ENTRYPOINT ["sbt"]
CMD ["--version"]