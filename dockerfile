FROM tomcat:latest
COPY ABCtechnologies-1.0-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
