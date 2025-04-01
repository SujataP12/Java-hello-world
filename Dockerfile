FROM openjdk:8-jdk-alpine

LABEL JAVA_VERSION="11"


WORKDIR /work/

COPY pom.xml /work/

COPY target/*.jar /work/application.jar

EXPOSE 8080
CMD ["java", "-jar", "application.jar"]