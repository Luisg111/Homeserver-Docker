export COMPOSE_FILES="$(find . | grep "docker-compose.yml")"

for COMPOSE_FILE in $COMPOSE_FILES
do
    docker compose -down
done