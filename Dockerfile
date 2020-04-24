FROM openjdk:8
RUN java -version

FROM tomcat:8.0
ADD webapp.war /usr/local/tomcat/webapps/
RUN rm /usr/local/tomcat/conf/tomcat-users.xml
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD ["catalina.sh", "run"]


