cd /var/www
php bin/console doctrine:database:drop --if-exists --force
php bin/console doctrine:database:create --if-not-exists
php bin/console doctrine:schema:update --force