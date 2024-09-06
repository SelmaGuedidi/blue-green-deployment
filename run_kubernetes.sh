
# Run the Docker Hub container with kubernetes
kubectl apply -f ./blue-green-service.yaml
# Creating tunnel for service bluegreenlb
minikube tunnel
