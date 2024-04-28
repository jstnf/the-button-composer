build:
	@docker compose build --no-cache

up:
	@docker compose up -d

down:
	@docker compose down

restart:
	@docker compose restart

clean:
	@docker compose down
	@docker compose rm -f
	@docker image rm the-button-composer-frontend
	@docker image rm the-button-composer-backend
	@docker image rm cloudflare/cloudflared
