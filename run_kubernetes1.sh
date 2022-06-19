#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
alias kubectl="minikube kubectl --"
dockerpath=varungosain/proj4vg

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run proj4vg --port=80 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward proj4vg 8000:80