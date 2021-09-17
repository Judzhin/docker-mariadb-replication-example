CHANGE MASTER TO
    MASTER_HOST='mariadb-master',
    MASTER_USER='root_slave',
    MASTER_PASSWORD='root.password',
    MASTER_PORT=3306,
    # Указанные значения мы берем из настроек Мастера
    MASTER_LOG_FILE='master_replication-bin.000003',
    MASTER_LOG_POS=4,
    MASTER_CONNECT_RETRY=10;

CHANGE MASTER TO
    MASTER_LOG_FILE='master_replication-bin.000002',
    MASTER_LOG_POS=4;

# После этого запускаем репликацию на Слейве:
START SLAVE;