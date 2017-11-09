.DEFAULT_GOAL := help

build: ## Build the docker containers
	@time docker-compose -f services/docker-compose.yml build

run: clean ## Run the docker containers
	@time docker-compose -f services/docker-compose.yml up -d

destroy: ## Destroy the docker containers
	@time docker-compose -f services/docker-compose.yml down
	$(MAKE) clean

clean: ## cleanup leftover docker images
	@time docker images | awk '/<none>/{ print $3 }' | xargs docker rmi

push: build ## push latest images to docker hub (MAINAINTERS ONLY)
	@time docker push jprime/spikey:golang
	@time docker push jprime/spikey:ruby
	@time docker push jprime/spikey:postgres

.PHONY: help

help:
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
