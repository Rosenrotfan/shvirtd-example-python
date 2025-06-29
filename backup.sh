#!/bin/bash

export $(grep -v '^#' /opt/shvirtd-example-python/.env | xargs)

docker run -it \
    --rm --entrypoint "" \
    -v /opt/backup:/backup \
    --network shvirtd-example-python_backend \
    --link="shvirtd-example-python-db-1" \
    schnitzler/mysqldump \
    mysqldump --opt -h 172.20.0.10 -u $MYSQ_USER -p$MYSQL_PASSWORD "--result-file=/backup/$(date +"%Y-%m-%d")dumps.sql" $MYSQL_DATABASE

