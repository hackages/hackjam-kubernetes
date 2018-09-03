#!/bin/bash

set -xe

curl -Lo docker-machine-driver-hyperkit https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
&& chmod +x docker-machine-driver-hyperkit \
&& sudo cp docker-machine-driver-hyperkit /usr/local/bin/ \
&& rm docker-machine-driver-hyperkit \
&& sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit \
&& sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit

brew cask install minikube

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.0/bin/darwin/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl
