build:
	okteto build -t registry.cloud.okteto.net/ci7lus/hello-world:latest .

deploy:
	kubectl apply -f k8s.yml
