FROM mariadb:latest as scratch

ARG APP_ENV
ENV APP_ENV=${APP_ENV}

# nginx
COPY .docker/mariadb/my_${APP_ENV}.cnf /root/my.cnf

# DEV env (local)
FROM scratch as dev

FROM scratch as test

# PROD env (kubernetes)
FROM scratch as prod

CMD ["mysqld"]
EXPOSE 3306