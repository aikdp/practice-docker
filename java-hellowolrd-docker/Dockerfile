# Use an OpenJDK base image
FROM openjdk:24

# Copy Java source code
COPY HelloWorld.java /app/

# Set working directory
WORKDIR /app

# Compile the Java code
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
