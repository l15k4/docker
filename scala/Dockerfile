FROM java:8
MAINTAINER Jakub Liska liska.jakub@gmail.com

ENV SCALA_VERSION 2.11.7
ENV SCALA_HOME /opt/scala-$SCALA_VERSION
ENV PATH $PATH:$SCALA_HOME/bin

RUN curl -jLks http://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | gunzip -c - | tar -xf - -C /opt

ENTRYPOINT ["scala"]