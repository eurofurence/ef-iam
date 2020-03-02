
install: update freshdb seed run
	cp ./spa/.env.example ./spa/.env && \
	cp ./api/.env.example ./api/.env
	
update:
	docker-compose run --rm spa yarn && docker-compose run --rm api composer install
freshdb:
	docker-compose run --rm api php artisan migrate:fresh --force
migrate:
	docker-compose run --rm api php artisan migrate --force
seed:
	docker-compose run --rm api php artisan db:seed --force
run:
	docker-compose up -d && docker-compose logs -f spa