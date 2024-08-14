#!/bin/bash

sudo apt install curl -y
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO https://dl.k8s.io/release/v1.31.0/bin/linux/amd64/kubectl
curl -LO https://dl.k8s.io/release/v1.31.0/bin/linux/arm64/kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check


echo "---------- Install kubectl ----------"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "---------- Install kubectl version  ----------"
kubectl version --client


echo "---------- Install kubectl version yaml formate ----------"
kubectl version --client --output=yaml



echo "----------------- Install Minikube on ubuntu -----------------"
