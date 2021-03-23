# Далее создаем и назначаем права пользователю для реплики:
CREATE USER 'root.slave'@'%' IDENTIFIED VIA mysql_native_password USING '*67503965B6ED34C9F8C9D1052FFD770F67256046'; # root.password
GRANT REPLICATION SLAVE ON *.* TO 'root.slave'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
FLUSH PRIVILEGES;

# Далее блокируем все таблицы в нашей базе данных:
USE docker.example;
FLUSH TABLES WITH READ LOCK;

# Проверяем статус Мастер-сервера:
SHOW MASTER STATUS;

# Разблокируем таблицы в консоли mysql:
UNLOCK TABLES;