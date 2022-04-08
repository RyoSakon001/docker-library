# Git HubからCloneした際には、「make laravel_n」コマンドで、追加の環境構築を完了とする。
laravel_1:
	docker compose up -d
	docker compose exec app composer install
	docker compose exec app cp .env.example .env
	docker compose exec app php artisan key:generate
	docker compose exec app php artisan storage:link
	docker compose exec app chmod -R 777 storage bootstrap/cache

laravel_2:
	docker compose exec app php artisan migrate:fresh