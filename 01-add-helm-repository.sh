#!/bin/bash
# https://docs.portainer.io/start/install/server/kubernetes/baremetal#expose-via-load-balancer
# © joerg@casa-blu.de

helm repo add portainer https://portainer.github.io/k8s/
helm repo update

# Search for available versions
helm search repo portainer/portainer --versions | head -5