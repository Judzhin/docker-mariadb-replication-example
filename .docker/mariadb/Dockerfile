FROM mariadb:latest as scratch

# DEV env (local)
FROM scratch as dev

FROM scratch as test

# PROD env (kubernetes)
FROM scratch as prod

CMD ["mysqld"]
EXPOSE 3306