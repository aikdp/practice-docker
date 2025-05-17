# Start from an OpenJDK image
FROM openjdk:17

# Set working directory
WORKDIR /app

COPY . .
RUN mvn clean package

# Copy the built JAR (adjust the name if needed)
# COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

COPY target/myapp-1.0.0.jar app.jar


# Expose port
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]



