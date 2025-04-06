FROM openjdk:17
EXPOSE 8080
ADD target/springboot_kubernetes-0.0.1-SNAPSHOT.jar springboot_kubernetes-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/springboot_kubernetes-0.0.1-SNAPSHOT.jar"]
