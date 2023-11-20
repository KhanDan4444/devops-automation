FROM openjdk:21-oracle
COPY target/*.jar spring-backend.jar
EXPOSE 7070
ENTRYPOINT ["java","-jar","spring-backend.jar"]