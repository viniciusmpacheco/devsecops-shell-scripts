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
  buildDockerImage
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

buildDockerImageProd(){
  podman build -t devsecops-crud-frontend:0.0.0 . --target prod
}

buildDockerImageStage(){
  podman build -t devsecops-crud-frontend:0.0.0 . --target stage
}

buildDockerImageDev(){
  podman build -t devsecops-crud-frontend:0.0.0 . --target dev
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