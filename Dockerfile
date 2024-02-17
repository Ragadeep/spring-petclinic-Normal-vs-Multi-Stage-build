ARG MAVEN_IMAGE=maven:3.9.6-amazoncorretto-17
ARG APP_NAME=spring-petclinic-3.2.0-SNAPSHOT.jar

FROM $MAVEN_IMAGE AS build-stage
WORKDIR /app
COPY . .
RUN mvn package

FROM amazoncorretto:17-al2023-headless
WORKDIR /app
COPY --from=build-stage /app/target/$APP_NAME /app/demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/demo.jar"]
