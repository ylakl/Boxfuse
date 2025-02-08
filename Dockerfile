FROM tomcat:9
RUN apt install maven
RUN mvn package
COPY target/hello-1.0.war /var/lib/tomcat9/webapps/hello-1.0.war
ADD /var/lib/tomcat9/webapps/hello-1.0.war
