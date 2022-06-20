.PHONY: help
help:
	@cat $(MAKEFILE_LIST) | grep -e "^[a-zA-Z0-9_\-]*: *.*## *" | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

poetry-install:	## [One-time local setup] installs poetry
	curl -sSL https://install.python-poetry.org | python3 -

install: ## [One-time local setup] installs dependencies
	poetry install

pre-commit-install: ## [One-time local setup] install pre-commit git hooks
	pre-commit install

shell: ## [Virtual Environment] Enter virtual environment
	poetry shell

run-unit-tests: ## [Unit test] Run all unit tests
	poetry run pytest
