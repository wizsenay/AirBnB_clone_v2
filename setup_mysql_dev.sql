# Connect to the MySQL server as root
mysql -u root -p

# Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

# Create the user if it does not already exist
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

# Reload the grant tables to ensure that the new user and password take effect
FLUSH PRIVILEGES;

# Grant the hbnb_dev user all privileges on the hbnb_dev_db database
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

# Grant the hbnb_dev user the SELECT privilege on the performance_schema database
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

