FROM tomcat:latest
# Copy the WAR file into the Tomcat webapps directory
COPY ABCtechnologies-1.0-1.0.war /usr/local/tomcat/webapps/

# Change the port Tomcat listens on
RUN sed -i 's/port="8080"/port="9090"/g' /usr/local/tomcat/conf/server.xml

# Expose the new port
EXPOSE 9090

# Start Tomcat
CMD ["catalina.sh", "run"]