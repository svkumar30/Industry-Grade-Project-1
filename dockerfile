FROM tomcat:base
COPY ABCtechnologies.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
