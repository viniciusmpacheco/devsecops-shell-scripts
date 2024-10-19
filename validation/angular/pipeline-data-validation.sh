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
  echo "[INFO] Pipeline data validation"
    applicationDataVerification
    validationDataVerification
    buildTestDataVerification
    qualityAssuranceDataVerification
    buildDataVerification
    delivieryDataVerification
    deployDataVerification
    deployTestDataVerification
    monitoringDataVerification
    observabilityDataVerification
    feedbackDataVerification
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

applicationDataVerification(){
  echo " application data verification"
  propertiesToVerify=(
    .name
    .version
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
validationDataVerification(){
  echo " validation data verification"
  propertiesToVerify=(
    .validation
    .validation.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
buildTestDataVerification(){
  echo " buildTest data verification"
  propertiesToVerify=(
    .buildTests
    .buildTests.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
qualityAssuranceDataVerification(){
  echo " qualityAssurance data verification"
  propertiesToVerify=(
    .qualityAssurance
    .qualityAssurance.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
buildDataVerification(){
  echo " build data verification"
  propertiesToVerify=(
    .build
    .build.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
delivieryDataVerification(){
  echo " deliviery data verification"
  propertiesToVerify=(
    .deliviery
    .deliviery.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
deployDataVerification(){
  echo " deploy data verification"
  propertiesToVerify=(
    .deploy
    .deploy.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
deployTestDataVerification(){
  echo " deployTest data verification"
  propertiesToVerify=(
    .deployTests
    .deployTests.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
monitoringDataVerification(){
  echo " monitoring data verification"
  propertiesToVerify=(
    .monitoring
    .monitoring.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
observabilityDataVerification(){
  echo " observability data verification"
  propertiesToVerify=(
    .observability
    .observability.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
      exit 1
    fi
  done
}
feedbackDataVerification(){
  echo " feedback data verification"
  propertiesToVerify=(
    .feedback
    .feedback.enabled
  )
  for property in "${propertiesToVerify[@]}"; do
    if [[ -z "$(yq -r ${property} pipeline.yaml)" ]]; then
      echo " [ERROR] Property '"${property}"' is not set in the file 'pipeline.yaml'"
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