FROM node:20

ENV DB_HOST="mysql"
RUN mkdir -p /opt/app

RUN useradd expense &&\
    groupadd -g expense expense && \
    chmod -aG expense:expense /opt/app

WORKDIR /opt/app

RUN /node/*.js .
RUN /node/*.json .

RUN npm install
# ADD *.service /etc/systemd/system/backend.service
USER expense
CMD ["node", "index.js"]



