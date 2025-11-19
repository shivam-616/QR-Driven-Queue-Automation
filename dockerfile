# Stage 1: Build the application with Maven
# Switched from 'maven:3.8.5-openjdk-17' to a Temurin-based Maven image
FROM maven:3.9-eclipse-temurin-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml file to download dependencies
COPY pom.xml .
# Copy the rest of the source code
COPY src ./src

# Run the Maven package command to build the project and create the .jar file
RUN mvn clean package -DskipTests

# Stage 2: Create the final, lightweight production image
# Switched from 'openjdk:17-jdk-slim' (deprecated) to Eclipse Temurin JRE (lighter and supported)
FROM eclipse-temurin:17-jre-jammy

# Set the working directory
WORKDIR /app

# Copy the compiled .jar file from the 'build' stage into this new stage
COPY --from=build /app/target/queuemanagement-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# The command to run when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
# edit the filesgit
