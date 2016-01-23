#!/usr/bin/env bash

MVN_REPO=$1
MVN_GROUP_ID=$2
MVN_ARTIFACT_ID=$3
MVN_VERSION=$4

MVN_GROUP_PATH=$(echo "$MVN_GROUP_ID" | tr . /)

JAR_PATH="/tmp/test.jar"

curl -jLks -o ${JAR_PATH} "${MVN_REPO}/${MVN_GROUP_PATH}/${MVN_ARTIFACT_ID}/${MVN_VERSION}/${MVN_ARTIFACT_ID}-${MVN_VERSION}.jar"

java -jar ${JAR_PATH} "${@:5}"