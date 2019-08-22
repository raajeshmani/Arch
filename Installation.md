### Mariadb 

Install mariadb

    # mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    # chown -R mysql /var/lib/mysql
    
Start mariadb.service

Answer carefully for the following script

    # mysql_secure_installation


Configuration

    # mysql -u root -p
   
Here monty is the username and some_pass is the password 
    
    MariaDB> CREATE USER 'monty'@'localhost' IDENTIFIED BY 'some_pass';
    MariaDB> GRANT ALL PRIVILEGES ON mydb.* TO 'monty'@'localhost';
    MariaDB> FLUSH PRIVILEGES;
    MariaDB> quit
