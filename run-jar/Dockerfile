FROM java:8
MAINTAINER Jakub Liska liska.jakub@gmail.com

ADD run-jar.sh /run-jar.sh

ENTRYPOINT /run-jar.sh ${repo} ${group} ${artifact} ${version}