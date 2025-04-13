#!/bin/bash

APP_NAME='替换为目标'
APP_JAR="${APP_NAME}.jar"

nohup java -server -Djava.security.egd=file:/dev/urandom -Xmx1G -Dspring.profiles.active=beta -jar ${APP_JAR} 2>&1 &
echo $! > service.pid
echo "start service with pid $!"