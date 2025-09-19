#!/bin/bash

# Salir inmediatamente si un comando falla
set -e

# Añadir el repositorio de Helm de Bitnami
echo "--- Añadiendo el repositorio de Bitnami ---"
helm repo add bitnami https://charts.bitnami.com/bitnami

# Actualizar los repositorios de Helm
echo "--- Actualizando repositorios ---"
helm repo update

# Añadir el repositorio de AWS EBS CSI Driver
echo "--- Añadiendo el repositorio de AWS EBS CSI Driver ---"
helm repo add aws-ebs-csi-driver https://kubernetes-sigs.github.io/aws-ebs-csi-driver

# Actualizar los repositorios de Helm de nuevo
echo "--- Actualizando repositorios ---"
helm repo update

# Instalar WordPress usando el chart de Bitnami
echo "--- Instalando WordPress ---"
helm install wordpress bitnami/wordpress

echo "--- ¡Instalación de WordPress completada! ---"