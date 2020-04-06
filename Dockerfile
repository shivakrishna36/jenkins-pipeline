
FROM tomcat:8.0
ADD target/pipeline.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
ENTRYPOINT ["/pipeline"]
