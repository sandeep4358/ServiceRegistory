FROM amazoncorretto:17.0.0-alpine

ADD target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
