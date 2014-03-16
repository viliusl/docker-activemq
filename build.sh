#/bin/bash

IMAGE="viliusl/ubuntu-activemq-server"
BUILD_CMD="sudo docker build -rm=true -t=$IMAGE ."
echo "Building Docker image: '$IMAGE'"
$BUILD_CMD