FROM java:8
MAINTAINER Jakub Liska liska.jakub@gmail.com

ADD run-fat-jar.sh /run-fat-jar.sh

ENTRYPOINT /run-fat-jar.sh ${repo} ${group} ${artifact} ${version}