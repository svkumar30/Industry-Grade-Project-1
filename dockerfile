FROM tomcat:latest

# Set environment variables
ENV WAR_FILE=ABCtechnologies-1.0-1.0.war
ENV TOMCAT_PORT=9090

# Copy WAR file to webapps directory
COPY ./${WAR_FILE} /usr/local/tomcat/webapps/

# Update Tomcat port from 8080 to the value of TOMCAT_PORT
RUN sed -i "s/port=\"8080\"/port=\"${TOMCAT_PORT}\"/g" /usr/local/tomcat/conf/server.xml

# Expose the specified port
EXPOSE ${TOMCAT_PORT}

# Healthcheck configuration to monitor the service
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:${TOMCAT_PORT}/ || exit 1

# Start Tomcat
CMD ["catalina.sh", "run"]
