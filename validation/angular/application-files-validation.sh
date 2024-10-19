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
  echo "[INFO] Application files validation"  
    fileVerification
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

fileVerification(){
  echo " existence of files"  
  filesToVerify=(
    Dockerfile
    Jenkinsfile
    Bamboofile.yaml
    pipeline.yaml
    .github/workflows/devsecops-crud-frontend-pipeline.yaml
    angular.json
    .dockerignore
    .gitignore
    package-lock.json
    package.json
    README.md
    LICENSE
  )
  for file in "${filesToVerify[@]}"; do
    if [[ ! -e "${file}" || ! -s "${file}" ]]; then
      echo "[ERROR] File "${file}" does not exist or the file is empty"
      exit 1
    fi
  done
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