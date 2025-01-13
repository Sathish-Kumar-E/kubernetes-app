# Use an OpenJDK image for Java 17
FROM openjdk:17-jdk-alpine

# Expose the port the application will run on
EXPOSE 8080

# Add the jar file to the container
ADD target/kubernetes-app-0.0.1-SNAPSHOT.jar kubernetes-app-0.0.1-SNAPSHOT.jar

# Set the entry point to run the application
ENTRYPOINT ["java", "-jar", "/kubernetes-app-0.0.1-SNAPSHOT.jar"]
