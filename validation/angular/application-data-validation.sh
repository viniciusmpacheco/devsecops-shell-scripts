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
  echo "[INFO] Application data validation"
    dataVerificationInPackageJson
    dataVerificationInAngularJson
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

dataVerificationInPackageJson(){
  echo " in the 'package.json' file"  
  propertiesToVerify=(
    .name
    .version
    .scripts.build
    .scripts.\"build:stage\"
    .scripts.\"build:dev\"
    .scripts.start
    .scripts.\"start:stage\"
    .scripts.\"start:dev\"
    .scripts.test
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(jq -r ${property} package.json)" || "$(jq -r ${property} package.json)" == "null"  ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'package.json'"
      exit 1
    fi
  done  
}

dataVerificationInAngularJson(){
  echo " in the 'angular.json' file" 
  propertiesToVerify=(
    .projects.\"devsecops-crud-frontend\".architect.build.configurations.production
    .projects.\"devsecops-crud-frontend\".architect.build.configurations.stage
    .projects.\"devsecops-crud-frontend\".architect.build.configurations.stage.fileReplacements[].with
    .projects.\"devsecops-crud-frontend\".architect.build.configurations.development
    .projects.\"devsecops-crud-frontend\".architect.build.configurations.development.fileReplacements[].with
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(jq -r ${property} angular.json)" || "$(jq -r ${property} angular.json)" == "null"  ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'angular.json'"
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