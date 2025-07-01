#!/bin/bash
echo "--- Installing NetBox Docker ---"
git clone -b release https://github.com/netbox-community/netbox-docker.git
cd ./netbox-docker
tee docker-compose.override.yml <<EOF
services:
  netbox:
    ports:
      - 8000:8080
EOF
docker compose pull
docker compose up -d

echo "--- Create Superuser ---"
docker compose exec netbox /opt/netbox/netbox/manage.py createsuperuser

docker compose up -d
