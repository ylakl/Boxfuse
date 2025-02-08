FROM maven AS build
COPY . .
RUN mvn clean package

FROM tomcat:9

COPY target/hello-1.0.war /var/lib/tomcat9/webapps/hello-1.0.war
ADD /var/lib/tomcat9/webapps/hello-1.0.war

CMD ["catalina.sh", "run"]
