composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition project-files
cd project-files
bin/magento setup:install \
--base-url=http://localhost:8111 \
--db-host=db \
--db-name=magento244 \
--db-user=mygento \
--db-password=mymagento \
--admin-firstname=admin \
--admin-lastname=admin \
--admin-email=nahidacm@gmail.com \
--admin-user=admin \
--admin-password=admin123 \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--search-engine=elasticsearch7 \
--elasticsearch-host=opensearch-node1 \
--elasticsearch-port=9200 \
--elasticsearch-index-prefix=magento2 \
--elasticsearch-timeout=15

#last admin url: /admin_1505hk