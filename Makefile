.ONESHELL:
.SHELL := /bin/bash
.PHONY: ALL
.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Install required tools for local environment
	brew install tfenv || exit 0
	tfenv install || exit 0
	brew install terraform_landscape || exit 0

apply:
	cd terraform && \
	terraform init && \
	terraform apply

destroy:
	cd terraform && \
	terraform destroy

fmt: ## Formats the TF
	terraform fmt -recursive

plan:
	cd terraform && \
	terraform init && \
	terraform plan
