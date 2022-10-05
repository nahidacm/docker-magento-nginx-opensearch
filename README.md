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

#### Mac / M1 / Homebrew notes
Magento causes issue with the domain like "localhost". You must add some domain with .loc or .dev or something.
I used `magento244.loc` in this case.
You must change the base url accordingly.
I installed nginx in my mac and `proxy_pass` to the docker service port

Server block file: `/opt/homebrew/etc/nginx/servers/magento244.loc.conf`
```
server {
    server_name magento244.loc;

    location / {
        proxy_set_header   X-Forwarded-For $remote_addr;
        proxy_set_header   Host $http_host;
        proxy_pass         http://localhost:8111;
    }
}
```

Also add the host entry accrodingly:
Host file: `/etc/hosts`
`127.0.0.1       magento244.loc`