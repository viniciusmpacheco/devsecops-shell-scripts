#!/bin/bash
# --------------------------------------------------------------- #
# Author: Vinicius de Moraes Pacheco                              #
# Author Email: viniciusdemoraespacheco@hotmail.com               #
# Description: Validação de arquivos necessários para             #
#   funcionamento da aplicação e da pipeline                      #
# Use Exemple:                                                    #
#   ...use example commands...                                    #
# --------------------------------------------------------------- #

# IMPORTS -----------------------------------
# source "another/shell/script/path.sh"

# VARIABLES ---------------------------------
VAR_NAME=value

# FUNCTIONS ---------------------------------
main(){
  verificacaoDeArquivos
  verificacaoDeArquivos
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

verificacaoDeArquivos(){
  [ -f 'Dockerfile' ] && echo "Existe o Dockerfile" || echo "Não existe o Dockerfile"
  [ -f 'Jenkinsfile' ] && echo "Existe o Jenkinsfile" || echo "Não existe o Jenkinsfile"
  [ -f 'Bamboofile.yaml' ] && echo "Existe o Bamboofile.yaml" || echo "Não existe o Bamboofile.yaml"
  [ -f 'pipeline.yaml' ] && echo "Existe o pipeline.yaml" || echo "Não existe o pipeline.yaml"
  [ -f '.github/workflows/devsecops-crud-frontend-pipeline.yaml' ] && echo "Existe o .github/workflow/devsecops-crud-frontend-pipeline.yaml" || echo "Não existe o .github/workflows/devsecops-crud-frontend-pipeline.yaml"
  [ -f 'angular.json' ] && echo "Existe o angular.json" || echo "Não existe o angular.json"
  [ -f '.dockerignore' ] && echo "Existe o .dockerignore" || echo "Não existe o .dockerignore"
  [ -f '.gitignore' ] && echo "Existe o .gitignore" || echo "Não existe o .gitignore"
  [ -f 'package-lock.json' ] && echo "Existe o package-lock.json" || echo "Não existe o package-lock.json"
  [ -f 'package.json' ] && echo "Existe o package.json" || echo "Não existe o package.json"
  [ -f 'README.md' ] && echo "Existe o README.md" || echo "Não existe o README.md"
  [ -f 'LICENSE' ] && echo "Existe o LICENSE" || echo "Não existe o LICENSE"
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