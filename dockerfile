FROM tomcat:latest
COPY ABCtechnologies-1.0-1.0.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD ["catalina.sh", "run"]
