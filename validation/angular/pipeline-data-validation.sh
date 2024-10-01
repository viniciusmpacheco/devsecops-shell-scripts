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
  validacaoDeDadosDaAplicacao
  validacaoDeDadosDeValidacao
  validacaoDeDadosDeTestesDeBuild
  validacaoDeDadosDeQa
  validacaoDeDadosDeBuild
  validacaoDeDadosDeDelivery
  validacaoDeDadosDeDeploy
  validacaoDeDadosDeTestesDeDeploy
  validacaoDeDadosDeMonitoring
  validacaoDeDadosDeObservability
  validacaoDeDadosDeFeedback
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

validacaoDeDadosDaAplicacao(){
  [ -z $(yq '.name' pipeline.yaml) ]
  [ -z $(yq '.version' pipeline.yaml) ]
}

validacaoDeDadosDeValidacao(){
  [ -z $(yq '.validation' pipeline.yaml) ]
  [ -z $(yq '.validation.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeTestesDeBuild(){
  [ -z $(yq '.buildTests' pipeline.yaml) ]
  [ -z $(yq '.buildTests.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeQa(){
  [ -z $(yq '.qa' pipeline.yaml) ]
  [ -z $(yq '.qa.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeBuild(){
  [ -z $(yq '.build' pipeline.yaml) ]
  [ -z $(yq '.build.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeDelivery(){
  [ -z $(yq '.delivery' pipeline.yaml) ]
  [ -z $(yq '.delivery.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeDeploy(){
  [ -z $(yq '.deploy' pipeline.yaml) ]
  [ -z $(yq '.deploy.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeTestesDeDeploy(){
  [ -z $(yq '.deployTests' pipeline.yaml) ]
  [ -z $(yq '.deployTests.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeMonitoring(){
  [ -z $(yq '.monitoring' pipeline.yaml) ]
  [ -z $(yq '.monitoring.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeObservability(){
  [ -z $(yq '.observability' pipeline.yaml) ]
  [ -z $(yq '.observability.enabled' pipeline.yaml) ]
}
validacaoDeDadosDeFeedback(){
  [ -z $(yq '.feedback' pipeline.yaml) ]
  [ -z $(yq '.feedback.enabled' pipeline.yaml) ]
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