build-api:
	docker build -t mlops-nginx-exam -f src/api/v1/Dockerfile .

run-api:
	docker run --rm -d --name mlops-nginx-exam -p 8000:8000 mlops-nginx-exam

stop-api:
	docker stop mlops-nginx-exam

start-project:
	docker-compose -p mlops up -d --build

stop-project:
	docker-compose -p mlops down

run-project:
	# run project
	@echo "Grafana UI: http://localhost:3000"

test-api:
	curl -X POST "https://localhost/predict" -H "Content-Type: application/json" -d '{"sentence": "Oh yeah, that was soooo cool!"}' --user admin:admin --cacert ./deployments/nginx/certs/nginx.crt

test-debug:
	curl -X POST "https://localhost/predict" -H "Content-Type: application/json" -H "X-Experiment-Group: debug" -d '{"sentence": "Oh yeah, that was soooo cool!"}' --user admin:admin --cacert ./deployments/nginx/certs/nginx.crt

test:
	bash ./tests/run_tests.sh
