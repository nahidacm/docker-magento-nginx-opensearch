## Docker for Magento 2

#### Includes
* Nginx
* OpenSearch
* PHP
* PhpMyadmin
* MariaDB

#### Installation
1. Clone this repo
2. Update the ports in `.env` and `install.sh` file if needed
2. Run `docker-compose up --build`
4. Run `docker exec -it magento244_backend /bin/bash` ( Here `magento244_backend` is the application container name)
3. Run `chmod 700 appuser install.sh`
5. Switch to non root user in container `su appuser`

4. run `./install.sh`
