# root.password
CREATE USER 'root.slave'@'%' IDENTIFIED VIA mysql_native_password USING '*67503965B6ED34C9F8C9D1052FFD770F67256046';
GRANT REPLICATION SLAVE ON *.* TO 'root.slave'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;