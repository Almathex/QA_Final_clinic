#! /bin/bash

kubectl apply -f mysql.yaml 
kubectl apply -f back.yaml
kubectl apply -f front.yaml
kubectl apply -f nginx.yaml

kubectl rolling restart deployment mysql.yaml back.yaml front.yaml nginx.yaml