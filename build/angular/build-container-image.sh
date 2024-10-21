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
# GLOBAL_VAR_NAME=value

# FUNCTIONS ---------------------------------
main(){
  echo "[INFO] Container image building"
    buildDockerImage
  echo ""

}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

buildDockerImage(){
  echo " building container image"
  case "${ENVIRONMENT}" in
    "dev")
      APP_VERSION=${APP_VERSION}-dev
    ;;
    "stage")
      APP_VERSION=${APP_VERSION}-rc
    ;;
    "prod")
      APP_VERSION=${APP_VERSION}
    ;;
  esac
  
  APP_IMAGE_COMPLETE_NAME="${APP_NAME}:${APP_VERSION}"

  docker build --target ${ENVIRONMENT} -t $APP_IMAGE_COMPLETE_NAME .
  if [ -z $(docker images --format {{.Repository}}:{{.Tag}} $APP_IMAGE_COMPLETE_NAME | grep "$APP_IMAGE_COMPLETE_NAME") ]; then
    echo " [ERROR] Container image '$APP_IMAGE_COMPLETE_NAME' not created"
  fi
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