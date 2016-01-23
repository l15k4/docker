#!/usr/bin/env bash

MVN_REPO=$1
MVN_GROUP_ID=$2
MVN_ARTIFACT_ID=$3
MVN_VERSION=$4

MVN_GROUP_PATH=$(echo "$MVN_GROUP_ID" | tr . /)

LOCAL_JAR_PATH="/tmp/test.jar"
REMOTE_JAR_PATH="${MVN_REPO}/${MVN_GROUP_PATH}/${MVN_ARTIFACT_ID}/${MVN_VERSION}/${MVN_ARTIFACT_ID}-${MVN_VERSION}.jar"

echo "Downloading ${REMOTE_JAR_PATH} ..."

curl -jLks -o ${LOCAL_JAR_PATH} "${REMOTE_JAR_PATH}"

echo "Running jar ..."

java -jar ${LOCAL_JAR_PATH} "${@:5}"
