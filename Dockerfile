FROM openjdk:11
WORKDIR /app
COPY target/comp367-webapp-1.0-SNAPSHOT.war /app/COMP367_WebApp.war
CMD ["java", "-jar", "COMP367_WebApp.war"]
EXPOSE 8080
