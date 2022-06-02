FROM mariadb
# Environment variables
ENV MYSQL_ROOT_PASSWORD "root_unyah"

RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER 'admin_unyah'@'%' IDENTIFIED BY 'unyah'"
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON *.* TO 'reverse'@'%'"
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT GRANT OPTION ON *.* TO 'reverse'@'%'"
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES"

RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE reverse"
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER 'reverse'@'%' IDENTIFIED BY 'unyah'"
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON reverse.* TO 'reverse'@'%'"
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES"