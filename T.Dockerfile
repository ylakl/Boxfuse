FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
COPY  /usr/src/app/target/hello-1.0.war /usr/local/tomcat/webapps/hello.war
CMD ["catalina.sh", "run"]
