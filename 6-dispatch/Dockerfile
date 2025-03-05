FROM golang:tip-bullseye

RUN mkdir -p /app
WORKDIR /app
COPY *.go ./
RUN groupadd roboshop && \
    useradd -g roboshop roboshop && \
    chown -R roboshop:roboshop /app

RUN go mod init dispatch && \
    go get && \
    go build -o dispatch

EXPOSE 8080
USER roboshop
CMD [ "/app/dispatch" ]



# #GPT
# FROM golang:tip-bullseye

# # Create and set working directory
# WORKDIR /app

# # Copy go.mod and go.sum separately for better caching
# COPY go.mod go.sum ./
# RUN go mod tidy

# # Copy all Go files and build the application
# COPY *.go ./
# RUN go build -o dispatch

# # Create user and set permissions
# RUN groupadd roboshop && \
#     useradd -g roboshop roboshop && \
#     chown -R roboshop:roboshop /app

# # Switch to non-root user
# USER roboshop

# # Expose application port
# EXPOSE 8080

# # Run the built application
# CMD [ "/app/dispatch" ]
