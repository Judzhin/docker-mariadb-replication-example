CHANGE
MASTER TO MASTER_HOST='mariadb-master', MASTER_USER='root.slave', MASTER_PASSWORD='root.password',
# Указанные значения мы берем из настроек Мастера
MASTER_LOG_FILE = 'mysql-bin.000007', MASTER_LOG_POS = 107;

# После этого запускаем репликацию на Слейве:
START SLAVE;