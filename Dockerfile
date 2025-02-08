FROM maven AS build
COPY . .
RUN apt install tomcat9 -y
RUN mvn clean package

COPY target/hello-1.0.war /var/lib/tomcat9/webapps/hello-1.0.war
CMD ["catalina.sh", "run"]
