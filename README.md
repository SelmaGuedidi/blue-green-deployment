
###  Blue-Green Deployment on Minikube

This repository demonstrates a simple **Blue-Green Deployment** on a Kubernetes cluster using Minikube. The deployment features two versions of a web application, `blue` and `green`, and uses a load balancer to distribute traffic between them. Docker is used to build and manage the application containers.

## Overview

This project implements a **Blue-Green Deployment** strategy using Minikube. The blue and green versions of the app are simple HTML pages served by `nginx`, and traffic is balanced between them using a Kubernetes `LoadBalancer` service.

The deployment involves:

- Building Docker images for both `blue` and `green` versions.
- Deploying both versions on Kubernetes using ReplicationControllers.
- Exposing the service via a `LoadBalancer` for external access.

## Pre-requisites

Make sure you have the following installed:

- Docker
- Minikube

## Setup and Usage

1. Prepare Blue Deployment
```
cd blue 
chmod +x run_docker.sh upload_docker.sh run_kubernetes.sh 
```

```
./run_docker.sh
```

Don't forget to modify `upload_docker.sh` to use your DockerHub ID:

```
./upload_docker.sh
```

```
./run_kubernetes.sh
```

2. Prepare Green Deployment

```
cd green 
chmod +x run_docker.sh upload_docker.sh run_kubernetes.sh 
```

```
./run_docker.sh
```

Don't forget to modify `upload_docker.sh` to use your DockerHub ID:

```
./upload_docker.sh
```

```
./run_kubernetes.sh
```

3. Deploy Blue-Green Service

```
cd .. 
chmod +x run_kubernetes.sh 
```

```
./run_kubernetes.sh
```
