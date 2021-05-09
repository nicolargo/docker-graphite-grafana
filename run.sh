#!/bin/bash

sudo mkdir -p /srv/docker/grafana/data
sudo mkdir -p /srv/docker/graphite/conf
sudo mkdir -p /srv/docker/graphite/storage
sudo mkdir -p /srv/docker/graphite/config
docker-compose up -d
sudo chown -R 472:472 /srv/docker/grafana/data
sudo chown -R 472:472 /srv/docker/graphite

echo "Graphite: http://127.0.0.1:80"
echo "Grafana:  http://127.0.0.1:3000 - admin/admin"
