#Stage:1
FROM node:20 AS build
RUN mkdir -p /opt/server
WORKDIR /opt/server
COPY *.js .
COPY *.json .
RUN npm install
# ADD *.service /etc/systemd/system/backend.service

# Stage:2
# FROM node:23-alpine3.20
FROM node:20.18.0-alpine3.20
EXPOSE 8080
# RUN mkdir -p /opt/server
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop && \
    mkdir -p /opt/server && \
    chown -R roboshop:roboshop /opt/server
WORKDIR /opt/server
# Copy necessary build output from the previous stage
COPY --from=build /opt/server/node_modules node_modules
COPY --from=build /opt/server/server.js server.js
COPY --from=build /opt/server/config config 
USER roboshop
CMD ["node", "server.js"]



# #SIVA
# # Use an official Node.js image as a base
# FROM node:20.18.0-alpine3.20

# # Create a group and a user
# RUN addgroup -S roboshop && adduser -S roboshop -G roboshop && \
#     mkdir -p /opt/server && \
#     chown -R roboshop:roboshop /opt/server

# # Set working directory
# WORKDIR /opt/server

# # Copy package.json and install dependencies
# COPY package.json .

# COPY server.js .

# RUN npm install


# # Switch to the non-root user
# USER roboshop

# # Expose the application port
# EXPOSE 8080

# # Start the application
# CMD ["node", "server.js"]