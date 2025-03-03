FROM node:20
#DB_HOST--mysql is the address to connect backend to mysql db.
ENV DB_HOST="mysql" 
RUN mkdir -p /opt/app

# RUN useradd expense &&\
#     groupadd -g expense expense && \
#     chmod -aG expense:expense /opt/app
RUN groupadd expense && \
    useradd -g expense expense && \
    usermod -aG expense expense && \
    chown -R expense:expense /opt/app

WORKDIR /opt/app

COPY /node/*.js .
COPY /node/*.json .

RUN npm install
# ADD *.service /etc/systemd/system/backend.service
USER expense
CMD ["node", "index.js"]



# groupadd expense → Creates a group without a numeric GID (auto-assigns one).
# useradd -g expense expense → Creates the user and assigns the primary group expense.
# usermod -aG expense expense → Ensures the user is added to the group.
# chown -R expense:expense /opt/app → Sets ownership of /opt/app.

