#!/bin/bash
echo "Generating image APP"
docker-compose build app
echo "WakeUp App"
docker-compose up -d
echo "Updating composer dependencies"
docker-compose exec app composer update
echo "App enabled at https://localhost:8001"