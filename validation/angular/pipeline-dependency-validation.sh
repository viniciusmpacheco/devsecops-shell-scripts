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
  validacaoDeValidacaoDeDependenciasDeValidation
  validacaoDeValidacaoDeDependenciasDeTestesDeBuild
  validacaoDeValidacaoDeDependenciasDeQa
  validacaoDeValidacaoDeDependenciasDeBuild
  validacaoDeValidacaoDeDependenciasDeDelivery
  validacaoDeValidacaoDeDependenciasDeDeploy
  validacaoDeValidacaoDeDependenciasDeTestesDeDeploy
  validacaoDeValidacaoDeDependenciasDeMonitoring
  validacaoDeValidacaoDeDependenciasDeObservability
  validacaoDeValidacaoDeDependenciasDeFeedback
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

validacaoDeValidacaoDeDependenciasDeValidation(){
  echo "Versão do 'jq': $(jq --version)"
  echo "Versão do 'yq': $(yq --version)"
}
validacaoDeValidacaoDeDependenciasDeTestesDeBuild(){
  echo "build test dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeQa(){
  echo "qa dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeBuild(){
  echo "Versão do 'docker': $(docker --version)"
  echo "Versão do 'podman': $(podman --version)"
  echo "Versão do 'skopeo': $(skopeo --version)"
  echo "Versão do 'helm': $(helm version)"
  echo "Versão do 'kustomize': $(kustomize version)"
  echo "Versão do 'npm': $(npm --version)"
  echo "Versão do 'node': $(node --version)"
  echo "Versão do 'ng': $(ng version | grep 'Angular CLI')"
}
validacaoDeValidacaoDeDependenciasDeDelivery(){
  echo "delivery dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeDeploy(){
  echo "deploy dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeTestesDeDeploy(){
  echo "deploy test dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeMonitoring(){
  echo "monitoring dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeObservability(){
  echo "observability dependencias validation"
}
validacaoDeValidacaoDeDependenciasDeFeedback(){
  echo "feedback dependencias validation"
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