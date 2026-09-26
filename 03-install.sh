#!/bin/bash
# © joerg@casa-blu.de

# Install Portainer
helm install --create-namespace -n portainer portainer portainer/portainer \
    --values portainer-values.yaml \
    --set enterpriseEdition.enabled=true \
    --set enterpriseEdition.image.tag=lts \
    --version 245.1.0 \
    --wait \
    --timeout 10m

# Verify deployment
kubectl get pods -n portainer
kubectl get svc -n portainer