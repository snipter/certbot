defaut: build

build: ./Dockerfile
		docker build -t snipter/certbot:latest .

deploy: ./Dockerfile
		docker push snipter/certbot:latest
