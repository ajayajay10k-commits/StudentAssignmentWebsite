
FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY target/StudentAssignmentWebsite.war /usr/local/tomcat/webapps/StudentAssignmentWebsite.war

EXPOSE 8080
