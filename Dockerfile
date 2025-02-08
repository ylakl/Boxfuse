FROM openjdk:8-jdk-alpine
FROM tomcat:9
WORKDIR /var/lib/tomcat9/*
COPY target/hello-1.0.war /var/lib/tomcat9/webapps/hello-1.0.war
CMD ["catalina.sh", "run"]
