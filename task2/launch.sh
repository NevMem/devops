set -eu

docker-compose down --volumes
docker-compose build
docker-compose up -d
