# FROM node:20
# #DB_HOST--mysql is the address to connect backend to mysql db. (mysql is name of MySQL Docker)
# ENV DB_HOST="mysql"      
# EXPOSE 8080
# RUN mkdir -p /opt/app

# # RUN useradd expense &&\
# #     groupadd -g expense expense && \
# #     chmod -aG expense:expense /opt/app
# RUN groupadd expense && \
#     useradd -g expense expense && \
#     usermod -aG expense expense && \
#     chown -R expense:expense /opt/app

# WORKDIR /opt/app

# COPY /node/*.js .
# COPY /node/*.json .

# RUN npm install
# # ADD *.service /etc/systemd/system/backend.service
# USER expense
# CMD ["node", "index.js"]



# groupadd expense → Creates a group without a numeric GID (auto-assigns one).
# useradd -g expense expense → Creates the user and assigns the primary group expense.
# usermod -aG expense expense → Ensures the user is added to the group.
# chown -R expense:expense /opt/app → Sets ownership of /opt/app.

#EG:2
# FROM node:20.18.0-alpine3.20

# # Set environment variable for MySQL container name
# ENV DB_HOST="mysql"

# # Expose application port
# EXPOSE 8080

# # Create group & user properly
# # RUN addgroup -g expense && \
# #     adduser -m -g expense -s /bin/bash expense && \
# #     mkdir -p /opt/app && \
# #     chown -R expense:expense /opt/app

# RUN addgroup expense && \
#     adduser -g expense expense && \
#     usermod -ag expense expense && \
#     chown -R expense:expense /opt/app

# # Set working directory
# WORKDIR /opt/app

# # Copy project files
# COPY node/* .

# # Install dependencies
# RUN npm install 

# # Switch to non-root user
# USER expense

# # Start the application
# CMD ["node", "index.js"]


# #EG:3
# # Use an official Node.js image as a base
# FROM node:20.18.0-alpine3.20

# ENV DB_HOST="mysql"
# # Create a group and a user
# RUN addgroup -S expense && adduser -S expense -G expense && \
#     mkdir -p /opt/app && \
#     chown -R expense:expense /opt/app

# # Set working directory
# WORKDIR /opt/app

# # Copy package.json and install dependencies
# COPY package.json .

# COPY *.js .

# RUN npm install


# # Switch to the non-root user
# USER expense

# # Expose the application port
# EXPOSE 8080

# # Start the application
# CMD ["node", "index.js"]




#After best practice
FROM node:20 AS build
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY /node/*.js .
COPY /node/*.json .
RUN npm install
# ADD *.service /etc/systemd/system/backend.service



FROM node:23-alpine3.20
ENV DB_HOST="mysql"   
EXPOSE 8080
RUN mkdir -p /opt/app
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir -p /opt/app && \
    chown -R expense:expense /opt/app
COPY --from=build /opt/app /opt/app
USER expense
CMD ["node", "index.js"]


