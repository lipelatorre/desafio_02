#!/bin/bash
set -e

kubectl create namespace desafio --dry-run=client -o yaml | kubectl apply -f -
helm upgrade --install olamundo ./olamundo -n desafio
