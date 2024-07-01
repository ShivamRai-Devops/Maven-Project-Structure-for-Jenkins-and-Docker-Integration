# Use the official Maven/Java image to create a build artifact.
FROM maven:3.6.3-openjdk-11 AS build

# Copy local code to the container workspace.
COPY ./ /usr/src/app
WORKDIR /usr/src/app

# Build the application.
RUN mvn clean package

# Use AdoptOpenJDK for production.
FROM adoptopenjdk:11-jre-hotspot

# Copy the jar file from the build stage to the production stage image.
COPY --from=build /usr/src/app/target/my-java-app-1.0-SNAPSHOT.jar /opt/my-app.jar

# Run the jar file.
CMD ["java", "-jar", "/opt/my-app.jar"]

