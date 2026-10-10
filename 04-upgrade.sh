#!/bin/bash
# © joerg@casa-blu.de

# Upgrade Portainer
helm upgrade -n portainer portainer portainer/portainer \
    --values portainer-values.yaml \
    --set enterpriseEdition.enabled=true \
    --set enterpriseEdition.image.tag=lts \
    --version 245.2.0 \
    --wait \
    --timeout 10m

# Verify deployment
kubectl get pods -n portainer
kubectl get svc -n portainer