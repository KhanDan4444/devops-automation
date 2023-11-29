FROM openjdk:17-jdk-slim
COPY target/*.jar spring-backend.jar
EXPOSE 7171
ENTRYPOINT ["java","-jar","spring-backend.jar"]
