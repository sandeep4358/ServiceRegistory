# Use the AdoptOpenJDK 17 JRE image
FROM adoptopenjdk:17-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/ServiceDiscovery.jar /app/ServiceDiscovery.jar

# Specify the port the application will run on
EXPOSE 8761

# Command to run your application
CMD ["java", "-jar", "ServiceDiscovery.jar"]
