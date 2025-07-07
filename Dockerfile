# Use official Tomcat as a parent image
FROM tomcat:9.0-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the Tomcat webapps directory
COPY target/User.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080