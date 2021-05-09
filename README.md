# Docker-compose files for a simple uptodate
# Graphite and Grafana stack

Get the stack (only once):

```
git clone https://github.com/nicolargo/docker-graphite-grafana.git
cd docker-graphite-grafana
docker pull grafana/grafana
docker pull graphite
```

Run your stack:

```
sudo mkdir -p /srv/docker/grafana/data
sudo mkdir -p /srv/docker/graphite/conf
sudo mkdir -p /srv/docker/graphite/storage
sudo mkdir -p /srv/docker/graphite/config
docker-compose up -d
sudo chown -R 472:472 /srv/docker/grafana
sudo chown -R 472:472 /srv/docker/graphite
```

Show me the logs:

```
docker-compose logs
```

Stop it:

```
docker-compose stop
docker-compose rm
```

Update it:

```
git pull
docker pull grafana/grafana
docker pull graphite
```
