.PHONY: update_dependencies help

run_docker:
	sudo docker compose --env-file .env build
	sudo docker compose --env-file .env up

stop_docker:
	sudo docker compose down

restart_docker: stop_docker run_docker

update_dependencies:
	poetry export --output=requirements/api.txt --without-hashes --only=api

make git_update:
	git pull

make update: stop_docker git_update run_docker

help:
	@echo "Available targets:"
	@echo "  help                 Show this help message"
	@echo "  update_dependencies  Export poetry dependencies to requirements files"
	@echo "  run_docker           Run the application locally"

