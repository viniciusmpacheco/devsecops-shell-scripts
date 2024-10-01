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

configuraVariaveisDeAmbiente(){
  APP_NAME=$(jq '.name' package.json)
  APP_VERSION=$(jq '.version' package.json)
  APP_VERSION_MAJOR=$(jq '.version' package.json)
  APP_VERSION_MINOR=$(jq '.version' package.json)
  APP_VERSION_PATCH=$(jq '.version' package.json)
  APP_DIR=$()
  
  GIT_BRANCH=$(git branch)
  GIT_BRANCH_TYPE=$(git branch)
  GIT_REPOSITORY_NAME=$(git remote -v)
  GIT_REPOSITORY_URL=$(git remote -v)
  GIT_COMMIT_HASH=$(git log --oneline -n1)
  GIT_COMMIT_MESSAGE=$(git log --oneline -n1)
  GIT_COMMIT_USER_NAME=$(git commit)
  GIT_COMMIT_USER_EMAIL=$(git commit)
  GIT_COMMIT_DATE=$()

  BUILD_NUMBER=$()
  BUILD_URL=$()
  BUILD_DIR=$()

  OS_NAME=$()
  OS_VERSION=$()
  OS_KERNEL=$()
  OS_KERNEL_VERSION=$()
  OS_ARCHTECTURE=$()
  
  ENVIRONMENT=$()

  NODE_VERSION=$(node -v)
  NPM_VERSION=$(npm -v)
  NG_VERSION=$(ng version | grep "Angular CLI:" )
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