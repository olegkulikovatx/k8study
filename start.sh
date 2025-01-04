#!/bin/sh
## Run minikube start !!!
# minikube service mongo-express-service  --network=socket_vmnet
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f mongo-configmap.yaml
kubectl apply -f mongo-express.yaml
minikube service mongo-express-service