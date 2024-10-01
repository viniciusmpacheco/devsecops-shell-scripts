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
buildPackageProd(){
  npm run build
  zip -R -sf devsecops-crud-frontend-0.0.0.zip dist/devsecops-crud-frontend
}

buildPackageStage(){
  npm run build:stage
  zip -R -sf devsecops-crud-frontend-stage-0.0.0.zip dist/devsecops-crud-frontend
}

buildPackageDev(){
  npm run build:dev
  zip -R -sf devsecops-crud-frontend-dev-0.0.0.zip dist/devsecops-crud-frontend
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