FROM tomcat:9
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
ADD /var/lib/tomcat9/webapps/hello-1.0.war
