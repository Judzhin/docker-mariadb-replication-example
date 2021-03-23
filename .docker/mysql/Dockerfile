FROM mysql:latest as scratch

ARG APP_ENV
ENV APP_ENV=${APP_ENV}

# COPY .docker/mariadb/my_${APP_ENV}.cnf /etc/mysql/conf.d/my.cnf
ADD ./data/dump.sql /docker-entrypoint-initdb.d/dump.sql
RUN apt-get update && apt-get install -y

# DEV env (local)
FROM scratch as dev

FROM scratch as test

# PROD env (kubernetes)
FROM scratch as prod

CMD ["mysqld"]
EXPOSE 3306