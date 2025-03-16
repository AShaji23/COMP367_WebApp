FROM tomcat:9.0-jdk11
COPY target/comp367-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/COMP367_WebApp.war
EXPOSE 8080
