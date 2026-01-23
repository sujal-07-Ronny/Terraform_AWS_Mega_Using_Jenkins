#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
service docker start

docker run -d \
  --name mega-website \
  -p 80:80 \
  ronny71011/mega:latest
