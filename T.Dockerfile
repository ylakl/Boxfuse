FROM tomcat:9
WORKDIR /var/lib/tomcat9/*
COPY  target/hello-1.0.war /usr/local/tomcat/webapps/hello.war
CMD ["catalina.sh", "run"]
