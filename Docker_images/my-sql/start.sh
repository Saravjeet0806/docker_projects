#!/usr/bin/env bash
#===============================================================================
#
#    AUTHOR: Saravjeet Singh <www.saravjeetofficial@gmail.com>
#
#===============================================================================
echo "Starting MySQL:"
/usr/bin/mysqld_safe &

#-------------------------------------------------------------------------------
# Wait for MySQL to start
echo "Waiting for MySQL to start..."
until mysqladmin ping > /dev/null 2>&1; do
    sleep 1
done
echo "MySQL started successfully."

#-------------------------------------------------------------------------------
# Configure MySQL based on runtime environment variables
if [ "${MYSQL_ALLOW_EMPTY_PASSWORD}" = "yes" ]; then
    echo "Configuring MySQL to allow empty passwords:"
    mysql -u root <<EOF
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION;
EOF
else
    echo "Root password must be set! Exiting."
    exit 1
fi

#-------------------------------------------------------------------------------
echo "Restarting MySQL:"
mysqladmin shutdown
exec /usr/bin/mysqld_safe
#===============================================================================
