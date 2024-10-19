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
  echo "[INFO] Application structure validation"
    directoryVerification
    filesVerification
  echo ""
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

directoryVerification(){
  echo " directory structure"
  directoriesToVerify=(
    src
    src/assets
    src/environments
    src/app
    src/app/core
    src/app/core/components
    src/app/core/constants
    src/app/core/enums
    src/app/core/guards
    src/app/core/interceptors
    src/app/core/models
    src/app/core/layouts
    src/app/core/config
    src/app/core/translations
    src/app/core/overrides
    src/app/core/services
    src/app/features
    # src/app/features/feature1/components
    # src/app/features/feature1/enums
    # src/app/features/feature1/interfaces
    # src/app/features/feature1/models
    # src/app/features/feature1/pages
    src/app/shared
    src/app/shared/components
    src/app/shared/directives
    src/app/shared/enums
    src/app/shared/pipes
    src/app/shared/services
    src/app/shared/validators
    src/assets
    src/assets/i18n
    src/assets/icons
    src/assets/images
    src/assets/static
    src/styles
  )
  for directory in "${directoriesToVerify[@]}"; do
    if [[ ! -d "${directory}" ]]; then
      echo " [ERROR] Directory ${directory} does not exist"
      exit 1
    fi
  done
}

filesVerification(){
  echo " file structure"
  filesToVerify=(
    src/index.html
    src/main.server.ts
    src/styles.scss
    src/app/app.component.html
    src/app/app.component.scss
    src/app/app.component.ts
    src/app/app.component.spec.ts
    src/app/app.config.server.ts
    src/app/app.config.ts
    src/app/app.routes.ts
    src/app/core/variables.scss
    src/app/core/theme.scss
    src/app/app.component.html
    src/app/app.component.scss
    src/app/app.component.spec.ts
    src/app/app.component.ts
    src/app/app.config.server.ts
    src/app/app.config.ts
    src/app/app.routes.ts
    src/environments/environment.dev.ts
    src/environments/environment.stage.ts
    src/environments/environment.ts
    src/index.html
    src/main.server.ts
    src/main.ts
    src/styles.scss
  )
  for file in "${filesToVerify[@]}"; do
    if [[ ! -e "${file}" ]]; then
      echo " [ERROR] File ${file} does not exist"
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