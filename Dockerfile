FROM openjdk:11
WORKDIR /app
COPY target/COMP367_WebApp.war /app/COMP367_WebApp.war
CMD ["java", "-jar", "COMP367_WebApp.war"]
EXPOSE 8080
