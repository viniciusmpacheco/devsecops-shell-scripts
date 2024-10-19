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
  echo "[INFO] Pipeline dependency validation"
    validationDependencyVerification
    # buildTestDependencyVerification
    # qualityAssuranceDependencyVerification
    buildDependencyVerification
    deliveryDependencyVerification
    deployDependencyVerification
    # deployTestDependencyVerification
    # monitoringDependencyVerification
    # observabilityDependencyVerification
    # feedbackDependencyVerification
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

validationDependencyVerification(){
  echo " validation dependencies verification"
  if [ ! -z "$(jq --version)" ]; then
    echo " -> Versão do 'jq': $(jq --version)"
  else 
    echo " [ERROR] There are no versions of the 'jq' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(yq --version)" ]; then
    echo " -> Versão do 'yq': $(yq --version)"
  else 
    echo " [ERROR] There are no versions of the 'yq' command installed for the pipeline"
    exit 1
  fi

}
buildTestDependencyVerification(){
  echo " build test dependencias verification"
}
qualityAssuranceDependencyVerification(){
  echo " quality assurance dependencias verification"
}
buildDependencyVerification(){
  echo " build dependencies verification"
  # if [ ! -z "$(docker --version)" ]; then
  #   echo " -> Versão do 'docker': $(docker --version)"
  # else
  #   echo " [ERROR] There are no versions of the 'docker' command installed for the pipeline"
  #   exit 1
  # fi

  if [ ! -z "$(podman --version)" ]; then
    echo " -> Versão do 'podman': $(podman --version)"
  else
    echo " [ERROR] There are no versions of the 'podman' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(helm version)" ]; then
    echo " -> Versão do 'helm': $(helm version)"
  else
    echo " [ERROR] There are no versions of the 'helm' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(kustomize version)" ]; then
    echo " -> Versão do 'kustomize': $(kustomize version)"
  else
    echo " [ERROR] There are no versions of the 'kustomize' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(npm --version)" ]; then
    echo " -> Versão do 'npm': $(npm --version)"
  else
    echo " [ERROR] There are no versions of the 'npm' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(node --version)" ]; then
    echo " -> Versão do 'node': $(node --version)"
  else
    echo " [ERROR] There are no versions of the 'node' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(ng version | grep 'Angular CLI')" ]; then
    echo " -> Versão do 'ng': $(ng version | grep 'Angular CLI')"
  else
    echo " [ERROR] There are no versions of the 'ng' command installed for the pipeline"
    exit 1
  fi

}
deliveryDependencyVerification(){
  echo " delivery dependencias verification"
  if [ ! -z "$(skopeo --version)" ]; then
    echo " -> Versão do 'skopeo': $(skopeo --version)"
  else
    echo " [ERROR] There are no versions of the 'skopeo' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(curl --version)" ]; then
    echo " -> Versão do 'curl': $(curl --version | grep "curl" )"
  else
    echo " [ERROR] There are no versions of the 'curl' command installed for the pipeline"
    exit 1
  fi
}
deployDependencyVerification(){
  echo " deploy dependencias verification"
  if [ ! -z "$(kubectl version --output=json --client=true | jq '.clientVersion.gitVersion')" ]; then
    echo " -> Versão do 'kubectl': $(kubectl version --output=json --client=true | jq '.clientVersion.gitVersion')"
  else
    echo " [ERROR] There are no versions of the 'kubectl' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(aws --version)" ]; then
    echo " -> Versão do 'aws': $(aws --version)"
  else
    echo " [ERROR] There are no versions of the 'aws' command installed for the pipeline"
    exit 1
  fi

  if [ ! -z "$(terraform --version)" ]; then
    echo " -> Versão do 'terraform': $(terraform --version | grep "terraform" )"
  else
    echo " [ERROR] There are no versions of the 'terraform' command installed for the pipeline"
    exit 1
  fi
}
deployTestDependencyVerification(){
  echo " deploy test dependencias verification"
}
monitoringDependencyVerification(){
  echo " monitoring dependencias verification"
}
observabilityDependencyVerification(){
  echo " observability dependencias verification"
}
feedbackDependencyVerification(){
  echo " feedback dependencias verification"
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