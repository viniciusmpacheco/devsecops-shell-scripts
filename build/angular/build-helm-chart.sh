#!/bin/bash
# ----------------------------------------- #
# Author: <Author Name>                     #
# Author Email: <Author Email>              #
# Description: <Script Description>         #
# Use Exemple:                              #
#   ...use example commands...              #
# ----------------------------------------- #

# IMPORTS -----------------------------------
# source "another/shell/script/path.sh"

# VARIABLES ---------------------------------
VAR_NAME=value

# FUNCTIONS ---------------------------------
main(){
  echo "main"
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

buildHelmChart(){
  helm lint devsecops-helm-charts/devsecops-crud-frontend
  helm install --dry-run --debug devsecops-crud-frontend-0.0.0 devsecops-helm-charts/devsecops-crud-frontend
  helm package devsecops-crud-frontend-0.0.0
  kustomize build overlays
  kustomize build overlays/dev | kubectl apply -f -
}

# FINAL TESTS -------------------------------
# finalTestA(){
#   if condition; then
#     command ...
#   fi
# }

# EXECUTION ---------------------------------
# initialTestA
main
# finalTestA