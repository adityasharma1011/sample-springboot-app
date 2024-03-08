#!/bin/bash

mvn clean package
docker build -t sample-java-webapp .
docker tag sample-java-webapp:latest kumaraditya54/sample-java-webapp:latest
docker push kumaraditya54/sample-java-webapp:latest
docker stop java-spring-boot 
docker rm java-spring-boot
docker rmi kumaraditya54/sample-java-webapp:latest sample-java-webapp
docker run -itd --name java-spring-boot -p 9090:8080 kumaraditya54/sample-java-webapp:latest
