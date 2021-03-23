# Как настроить MySQL Master-Slave репликацию?

## Настройка Мастера
```
# выбираем ID сервера, произвольное число, лучше начинать с 1
server-id = 1

# путь к бинарному логу
log_bin = /var/log/mysql/mysql-bin.log

# название Вашей базы данных, которая будет реплицироваться
binlog_do_db = newdatabase
```

## Настройки Слейва
```
# ID Слейва, удобно выбирать следующим числом после Мастера
server-id = 2

# Путь к relay логу
relay-log = /var/log/mysql/mysql-relay-bin.log

# Путь к bin логу на Мастере
log_bin = /var/log/mysql/mysql-bin.log

# База данных для репликации
binlog_do_db = newdatabase
```

### Полезная документация
https://highload.today/kak-nastroit-mysql-master-slave-replikatsiyu-3f/    
https://highload.today/replikatsiya-dannykh/    
https://vitalyzhakov.github.io/post/mysql-replication-docker/    
https://rtfm.co.ua/mysql-mariadb-error-1372-hy000-password-hash-should-be-a-41-digit-hexadecimal-number/    