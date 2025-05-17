

## Build the Docker image
```
docker build -t spring-boot-app .
```
# Run the container and expose port 8080
```
docker run -p 8080:8080 spring-boot-app
```

1. Open your browser and go to:
```
http://localhost:8080/
```

Output: Hello from Dockerized Spring Boot!
