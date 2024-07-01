# Makefile located in the local directory

# Project variables
PROJECT_NAME=paye-ton-kawa
COMPOSE_PATHS=-f ../gestionProduits/docker-compose.yml -f ../gestionCommandes/docker-compose.yml -f ../gestionClient/docker-compose.yml -f ../auth/docker-compose.yml -f ./docker-compose.yml

# Docker Compose project prefix (for creating scoped project names)
COMPOSE_PROJECT_NAME=$(PROJECT_NAME)

# Default action
all: up

# Start the project
up:
	docker-compose $(COMPOSE_PATHS) -p $(COMPOSE_PROJECT_NAME) up -d

# Stop the project
down:
	docker-compose $(COMPOSE_PATHS) -p $(COMPOSE_PROJECT_NAME) down

# View logs
logs:
	docker-compose $(COMPOSE_PATHS) -p $(COMPOSE_PROJECT_NAME) logs

# Rebuild the project
rebuild:
	docker-compose $(COMPOSE_PATHS) -p $(COMPOSE_PROJECT_NAME) up -d --build

# Remove all containers, networks, and volumes
clean:
	docker-compose $(COMPOSE_PATHS) -p $(COMPOSE_PROJECT_NAME) down --volumes --remove-orphans

# Help
help:
	@echo "Makefile for managing the $(PROJECT_NAME) project"
	@echo ""
	@echo "Usage:"
	@echo "   make up       Start all services including Kafka"
	@echo "   make down     Stop all services"
	@echo "   make logs     View logs for all services"
	@echo "   make rebuild  Rebuild all services"
	@echo "   make clean    Remove all containers, networks, and volumes"
	@echo "   make help     Show this help message"
