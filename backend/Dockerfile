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


FROM node:20.18.0-alpine3.20

# Set environment variable for MySQL container name
ENV DB_HOST="mysql"

# Expose application port
EXPOSE 8080

# Create group & user properly
RUN groupadd -g 1001 expense && \
    useradd -m -g expense -s /bin/bash expense && \
    mkdir -p /opt/app && \
    chown -R expense:expense /opt/app

# Set working directory
WORKDIR /opt/app

# Copy project files
COPY node/* .

# Install dependencies
RUN npm install 

# Switch to non-root user
USER expense

# Start the application
CMD ["node", "index.js"]
