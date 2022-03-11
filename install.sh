#!/bin/bash
echo "Generating image APP"
docker-compose build app
echo "WakeUp App"
docker-compose up -d
echo "Install composer dependencies"
docker-compose exec app composer install
echo "Generating APP Key"
docker-compose exec app php artisan key:generate
echo "App enabled at https://localhost:8001"