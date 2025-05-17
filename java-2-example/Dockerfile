# # Start from an OpenJDK image
# FROM openjdk:17

# # Set working directory
# WORKDIR /app

# COPY . .
# RUN mvn clean package

# # Copy the built JAR (adjust the name if needed)
# COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# # COPY target/myapp-1.0.0.jar app.jar


# # Expose port
# EXPOSE 8080

# # Run the app
# CMD ["java", "-jar", "app.jar"]



#2
# Stage 1: Build
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
