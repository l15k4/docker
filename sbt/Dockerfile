FROM java:8
MAINTAINER Jakub Liska liska.jakub@gmail.com

ENV SBT_VERSION 0.13.9
ENV PATH=$PATH:/opt/sbt/bin
ENV JAVA_OPTS -Dsbt.boot.directory=/opt/sbt/boot/

RUN curl -jLks https://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz | gunzip -c - | tar -xf - -C /opt

RUN mkdir /opt/project

WORKDIR /opt/project

RUN sbt about