#!/bin/bash
# uninstall of portainer
# © joerg@casa-blu.de

read -p "Do you really want to uninstall portainer? (y/N) " answer
if [[ ! "$answer" =~ ^[yY]$ ]]; then
  echo "Cancelled."
  exit 1
fi

helm uninstall portainer -n portainer
kubectl delete namespace portainer -i