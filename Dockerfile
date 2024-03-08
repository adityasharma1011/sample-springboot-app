FROM amazoncorretto:19.0.2-alpine3.17
ARG JAR_FILE=target/spring-boot-web.jar
# cd /opt/app
WORKDIR /opt/app
# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]

