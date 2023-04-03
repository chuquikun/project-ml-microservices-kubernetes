#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="boston-house-pricer"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deploy $dockerpath --image=chuquiondocker/$dockerpath:latest
kubectl run $dockerpath --image=chuquiondocker/$dockerpath:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$dockerpath --address 0.0.0.0 8000:80
