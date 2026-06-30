#!/bin/bash
# © joerg@casa-blu.de

# Upgrade Nextcloud
helm upgrade -n portainer portainer portainer/portainer \
    --values portainer-values.yaml \
    --set enterpriseEdition.enabled=true \
    --set enterpriseEdition.image.tag=lts \
    --version 239.4.0 \
    --wait \
    --timeout 10m

# Verify deployment
kubectl get pods -n portainer
kubectl get svc -n portainer