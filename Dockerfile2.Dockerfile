ARG TAG=3.9.6-amazoncorretto-17
FROM maven:${TAG}
WORKDIR /app
COPY . .
RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/target/spring-petclinic-3.2.0-SNAPSHOT.jar"]
