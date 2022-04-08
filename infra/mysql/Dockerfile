FROM mysql/mysql-server:8.0

ENV MYSQL_DATABASE=db_name \
  MYSQL_USER=master \
  MYSQL_PASSWORD=master \
  MYSQL_ROOT_PASSWORD=rootroot \
  TZ=Asia/Tokyo

COPY ./my.cnf /etc/my.cnf
RUN chmod 644 /etc/my.cnf