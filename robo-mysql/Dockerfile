FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=RoboShop@1
RUN groupadd roboshop && \
    useradd -g roboshop roboshop && \
    chown -R roboshop:roboshop /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d
ADD schema/*.sql /docker-entrypoint-initdb.d
USER roboshop
