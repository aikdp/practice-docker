# FROM mysql:8.0
# ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1

# RUN groupadd expense && \
#     useradd -g expense expense && \
#     chown -R expense:expense /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d

# ADD /schema/*.sql /docker-entrypoint-initdb.d

# USER expense



FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1
RUN groupadd expense && \
    useradd -g expense expense && \
    chown -R expense:expense /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d
ADD schema/*.sql /docker-entrypoint-initdb.d
USER expense
