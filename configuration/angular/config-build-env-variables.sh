#!/bin/bash
# --------------------------------------------------------------- #
# Author:                                                         #
# Author Email:                                                   #
# Description:                                                    #
# Use Exemple:                                                    #
# --------------------------------------------------------------- #

# IMPORTS -----------------------------------
# source "another/shell/script/path.sh"

# VARIABLES ---------------------------------
# GLOBAL_VAR_NAME=value

# FUNCTIONS ---------------------------------
main(){
  echo "[INFO] Environment Variables Configuration"
    environmentVariablesConfiguration
    printEnvironmentVariablesConfiguration
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

environmentVariablesConfiguration(){
  echo " setting env variables"
  APP_NAME=$(jq -r '.name' package.json)
  APP_VERSION=$(jq -r '.version' package.json)
  APP_VERSION_MAJOR=$(jq -r '.version' package.json)
  APP_VERSION_MINOR=$(jq -r '.version' package.json)
  APP_VERSION_PATCH=$(jq -r '.version' package.json)
  APP_DIR=$(pwd)
  APP_IMAGE_RESGISTRY=""
  APP_IMAGE_REPOSITORY=""
  APP_IMAGE_NAME=$APP_NAME
  APP_IMAGE_TAG=$APP_VERSION
  APP_IMAGE_COMPLETE_NAME="${APP_IMAGE_REPOSITORY}/${APP_IMAGE_NAME}:${APP_IMAGE_TAG}"
  GIT_BRANCH=$(git branch --show-current)
  GIT_BRANCH_TYPE=$(git branch --show-current)
  GIT_REPOSITORY_NAME=$(basename `git rev-parse --show-toplevel`)
  GIT_REPOSITORY_URL=$(git ls-remote --get-url origin)
  GIT_COMMIT_HASH=$(git rev-parse HEAD)
  GIT_COMMIT_HASH_SHORT=$(git rev-parse --short HEAD)
  GIT_COMMIT_MESSAGE=$(git log -1 --pretty=%B | cat)
  GIT_COMMIT_USER_NAME=$(git log -1 --pretty=%an | cat)
  GIT_COMMIT_USER_EMAIL=$(git log -1 --pretty=%ae | cat)
  GIT_COMMIT_DATE=$(git log -1 --pretty=%ad | cat)
  ENVIRONMENT=$(yq '.environment' pipeline.yaml)
  OS_NAME=$(sw_vers --productName)
  OS_VERSION=$(sw_vers --productVersion)
  OS_KERNEL=$(uname -o)
  OS_KERNEL_VERSION=$(uname -r)
  OS_ARCHTECTURE=$(uname -m)
}
printEnvironmentVariablesConfiguration(){
  echo " variable values"
  echo " -> APP_NAME=$APP_NAME"
  echo " -> APP_VERSION=$APP_VERSION"
  echo " -> APP_VERSION_MAJOR=$APP_VERSION_MAJOR"
  echo " -> APP_VERSION_MINOR=$APP_VERSION_MINOR"
  echo " -> APP_VERSION_PATCH=$APP_VERSION_PATCH"
  echo " -> APP_DIR=$APP_DIR"
  echo " -> APP_IMAGE_RESGISTRY=$APP_IMAGE_RESGISTRY"
  echo " -> APP_IMAGE_REPOSITORY=$APP_IMAGE_REPOSITORY"
  echo " -> APP_IMAGE_NAME=$APP_IMAGE_NAME"
  echo " -> APP_IMAGE_TAG=$APP_IMAGE_TAG"
  echo " -> APP_IMAGE_COMPLETE_NAME=$APP_IMAGE_COMPLETE_NAME"
  echo " -> GIT_BRANCH=$GIT_BRANCH"
  echo " -> GIT_BRANCH_TYPE=$GIT_BRANCH_TYPE"
  echo " -> GIT_REPOSITORY_NAME=$GIT_REPOSITORY_NAME"
  echo " -> GIT_REPOSITORY_URL=$GIT_REPOSITORY_URL"
  echo " -> GIT_COMMIT_HASH=$GIT_COMMIT_HASH"
  echo " -> GIT_COMMIT_HASH_SHORT=$GIT_COMMIT_HASH_SHORT"
  echo " -> GIT_COMMIT_MESSAGE=$GIT_COMMIT_MESSAGE"
  echo " -> GIT_COMMIT_USER_NAME=$GIT_COMMIT_USER_NAME"
  echo " -> GIT_COMMIT_USER_EMAIL=$GIT_COMMIT_USER_EMAIL"
  echo " -> GIT_COMMIT_DATE=$GIT_COMMIT_DATE"
  echo " -> ENVIRONMENT=$ENVIRONMENT"
  echo " -> OS_NAME=$OS_NAME"
  echo " -> OS_VERSION=$OS_VERSION"
  echo " -> OS_KERNEL=$OS_KERNEL"
  echo " -> OS_KERNEL_VERSION=$OS_KERNEL_VERSION"
  echo " -> OS_ARCHTECTURE=$OS_ARCHTECTURE"
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