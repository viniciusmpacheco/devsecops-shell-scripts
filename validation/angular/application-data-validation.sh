#!/bin/bash
# --------------------------------------------------------------- #
# Author: Vinicius de Moraes Pacheco                              #
# Author Email: viniciusdemoraespacheco@hotmail.com               #
# Description: Validação de dados da aplicação para utilização no #
#   fluxo e nas ferramentas da pipeline                           #
# Use Exemple:                                                    #
#   ...use example commands...                                    #
# --------------------------------------------------------------- #

# IMPORTS -----------------------------------
# source "another/shell/script/path.sh"

# VARIABLES ---------------------------------
VAR_NAME=value

# FUNCTIONS ---------------------------------
main(){
  verificacaoDeDados
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

verificacaoDeDados(){
  [ -z $(jq '.name' package.json) ]
  [ -z $(jq '.version' package.json) ]
  [ -z $(jq '.scripts."build"' package.json) ]
  [ -z $(jq '.scripts."build:stage"' package.json) ]
  [ -z $(jq '.scripts."build:dev"' package.json) ]
  [ -z $(jq '.scripts."start"' package.json) ]
  [ -z $(jq '.scripts."start:stage"' package.json) ]
  [ -z $(jq '.scripts."start:dev"' package.json) ]
  
  [ -z $(jq '.projects."devsecops-crud-frontend".architect.build.configurations.production' angular.json) ]
  [ -z $(jq '.projects."devsecops-crud-frontend".architect.build.configurations.stage' angular.json) ]
  [ -z $(jq '.projects."devsecops-crud-frontend".architect.build.configurations.stage.fileReplacements[].with' angular.json) ]
  [ -z $(jq '.projects."devsecops-crud-frontend".architect.build.configurations.development' angular.json) ]
  [ -z $(jq '.projects."devsecops-crud-frontend".architect.build.configurations.development.fileReplacements[].with' angular.json) ]
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