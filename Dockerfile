FROM maven:3.6.1-jdk-7-alpine AS build
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package

FROM tomcat:9
WORKDIR /var/lib/tomcat9/*
COPY  --from=build /usr/src/app/target/hello-1.0.war /usr/local/tomcat/webapps/hello.war
CMD ["catalina.sh", "run"]
