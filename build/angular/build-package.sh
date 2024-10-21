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
  echo "[INFO] Application package construction"
    buildPackage
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }
buildPackage(){
  echo " building application package"
  case "${ENVIRONMENT}" in
    "dev")
      APP_VERSION=${APP_VERSION}-dev
      BUILD_COMAND="npm run build:dev"
    ;;
    "stage")
      APP_VERSION=${APP_VERSION}-rc
      BUILD_COMAND="npm run build:stage"
    ;;
    "prod")
      APP_VERSION=${APP_VERSION}
      BUILD_COMAND="npm run build"
    ;;
  esac
  
  PACKAGE_NAME=${APP_NAME}-${APP_VERSION}.tar.gz
  PACKAGE_DIR=dist
  
  eval "${BUILD_COMAND}"
  tar -czf ${PACKAGE_DIR}/${PACKAGE_NAME} ${PACKAGE_DIR}/${APP_NAME}

  if [ ! -e "${PACKAGE_DIR}/${PACKAGE_NAME}" ]; then
    echo " [ERROR] The build package '${PACKAGE_NAME}' was not generated in the application directory '${PACKAGE_DIR}'"
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