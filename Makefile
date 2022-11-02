build:
	cargo build --release

docker-build:
	make build
	docker build --tag router:latest .
