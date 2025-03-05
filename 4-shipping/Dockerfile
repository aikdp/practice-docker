#Eg:2
#Stage:1
FROM node:20 AS build
RUN mkdir -p /opt/shipping
WORKDIR /opt/shipping
COPY pom.xml .
RUN mvn dependency:resolve
COPY src /opt/shipping/src/
RUN mvn package 

# Stage:2
# FROM node:23-alpine3.20
# FROM node:20.18.0-alpine3.20  
FROM openjdk:8-jre-alpine3.9
EXPOSE 8080
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop && \
    mkdir -p /opt/shipping && \
    chown -R roboshop:roboshop /opt/shipping
WORKDIR /opt/shipping
COPY --from=build /opt/shipping/target/*.jar shipping.jar
USER roboshop
CMD [ "java", "-Xmn256m", "-Xmx768m", "-jar", "shipping.jar" ]


#Eg:2
# # Stage 1: Build environment with Maven
# FROM maven AS builder
# WORKDIR /app
# COPY pom.xml .
# RUN mvn dependency:resolve
# COPY src ./src
# RUN mvn clean package 

# # Stage 2: Minimal runtime environment
# FROM openjdk:17-jre-slim

# WORKDIR /app
# COPY --from=builder /app/target/*.jar /app/
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "/app/*.jar"]