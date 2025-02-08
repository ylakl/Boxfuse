FROM openjdk:11-jdk-alpine

RUN apt install maven -y
RUN apt install tomcat9 -y
RUN mvn clean package

COPY target/hello-1.0.war /var/lib/tomcat9/webapps/hello-1.0.war
CMD ["catalina.sh", "run"]
