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
  verificacaoDeDiretorios
  verificacaoDeArquivos
}

# INITIAL TESTS -----------------------------
# initialTestA(){
#   if condition; then
#     command ...
#   fi
# }

verificacaoDeDiretorios(){
  [ -d 'src' ] && echo "Existe o src" || echo "Não existe o src"
  [ -d 'src/assets' ] && echo "Existe o src/assets" || echo "Não existe o src/assets"
  [ -d 'src/environments' ] && echo "Existe o src/environments" || echo "Não existe o src/environments"
  [ -d 'src/app' ] && echo "Existe o src/app" || echo "Não existe o src/app"
  [ -d 'src/app/core' ] && echo "Existe o src/app/core" || echo "Não existe o src/app/core"
  [ -d 'src/app/core/components' ] && echo "Existe o src/app/core/components" || echo "Não existe o src/app/core/components"
  [ -d 'src/app/core/constants' ] && echo "Existe o src/app/core/constants" || echo "Não existe o src/app/core/constants"
  [ -d 'src/app/core/enums' ] && echo "Existe o src/app/core/enums" || echo "Não existe o src/app/core/enums"
  [ -d 'src/app/core/guards' ] && echo "Existe o src/app/core/guards" || echo "Não existe o src/app/core/guards"
  [ -d 'src/app/core/interceptors' ] && echo "Existe o src/app/core/interceptors" || echo "Não existe o src/app/core/interceptors"
  [ -d 'src/app/core/models' ] && echo "Existe o src/app/core/models" || echo "Não existe o src/app/core/models"
  [ -d 'src/app/core/layouts' ] && echo "Existe o src/app/core/layouts" || echo "Não existe o src/app/core/layouts"
  [ -d 'src/app/core/config' ] && echo "Existe o src/app/core/config" || echo "Não existe o src/app/core/config"
  [ -d 'src/app/core/translations' ] && echo "Existe o src/app/core/translations" || echo "Não existe o src/app/core/translations"
  [ -d 'src/app/core/overrides' ] && echo "Existe o src/app/core/overrides" || echo "Não existe o src/app/core/overrides"
  [ -d 'src/app/core/services' ] && echo "Existe o src/app/core/services" || echo "Não existe o src/app/core/services"
  [ -d 'src/app/features' ] && echo "Existe o src/app/features" || echo "Não existe o src/app/features"
  [ -d 'src/app/features/feature1/components' ] && echo "Existe o src/app/features/feature1/components" || echo "Não existe o src/app/features/feature1/components"
  [ -d 'src/app/features/feature1/enums' ] && echo "Existe o src/app/features/feature1/enums" || echo "Não existe o src/app/features/feature1/enums"
  [ -d 'src/app/features/feature1/interfaces' ] && echo "Existe o src/app/features/feature1/interfaces" || echo "Não existe o src/app/features/feature1/interfaces"
  [ -d 'src/app/features/feature1/models' ] && echo "Existe o src/app/features/feature1/models" || echo "Não existe o src/app/features/feature1/models"
  [ -d 'src/app/features/feature1/pages' ] && echo "Existe o src/app/features/feature1/pages" || echo "Não existe o src/app/features/feature1/pages"
  [ -d 'src/app/shared' ] && echo "Existe o src/app/shared" || echo "Não existe o src/app/shared"
  [ -d 'src/app/shared/components' ] && echo "Existe o src/app/shared/components" || echo "Não existe o src/app/shared/components"
  [ -d 'src/app/shared/directives' ] && echo "Existe o src/app/shared/directives" || echo "Não existe o src/app/shared/directives"
  [ -d 'src/app/shared/enums' ] && echo "Existe o src/app/shared/enums" || echo "Não existe o src/app/shared/enums"
  [ -d 'src/app/shared/pipes' ] && echo "Existe o src/app/shared/pipes" || echo "Não existe o src/app/shared/pipes"
  [ -d 'src/app/shared/services' ] && echo "Existe o src/app/shared/services" || echo "Não existe o src/app/shared/services"
  [ -d 'src/app/shared/validators' ] && echo "Existe o src/app/shared/validators" || echo "Não existe o src/app/shared/validators"
  [ -d 'src/assets' ] && echo "Existe o src/assets" || echo "Não existe o src/assets"
  [ -d 'src/assets/i18n' ] && echo "Existe o src/assets/i18n" || echo "Não existe o src/assets/i18n"
  [ -d 'src/assets/icons' ] && echo "Existe o src/assets/icons" || echo "Não existe o src/assets/icons"
  [ -d 'src/assets/images' ] && echo "Existe o src/assets/images" || echo "Não existe o src/assets/images"
  [ -d 'src/assets/static' ] && echo "Existe o src/assets/static" || echo "Não existe o src/assets/static"
  [ -d 'src/styles' ] && echo "Existe o src/styles" || echo "Não existe o src/styles"
}

verificacaoDeArquivos(){
  [ -f 'src/index.html' ] && echo "Existe o src/index.html" || echo "Não existe o src/index.html"
  [ -f 'src/main.server.ts' ] && echo "Existe o src/main.server.ts" || echo "Não existe o src/main.server.ts"
  [ -f 'src/styles.scss' ] && echo "Existe o src/style.scss" || echo "Não existe o src/style.scss"
  [ -f 'src/app/app.component.html' ] && echo "Existe o src/app/app.component.html" || echo "Não existe o src/app/app.component.html"
  [ -f 'src/app/app.component.scss' ] && echo "Existe o src/app/app.component.scss" || echo "Não existe o src/app/app.component.scss"
  [ -f 'src/app/app.component.ts' ] && echo "Existe o src/app/app.component.ts" || echo "Não existe o src/app/app.component.ts"
  [ -f 'src/app/app.component.spec.ts' ] && echo "Existe o src/app/app.component.spec.ts" || echo "Não existe o src/app/app.component.spec.ts"
  [ -f 'src/app/app.config.server.ts' ] && echo "Existe o src/app/app.config.server.ts" || echo "Não existe o src/app/app.config.server.ts"
  [ -f 'src/app/app.config.ts' ] && echo "Existe o src/app/app.config.ts" || echo "Não existe o src/app/app.config.ts"
  [ -f 'src/app/app.routes.ts' ] && echo "Existe o src/app/app.routes.ts" || echo "Não existe o src/app/app.routes.ts"
  [ -f 'src/app/core/variables.scss' ] && echo "Existe o src/app/core/variables.scss" || echo "Não existe o src/app/core/variables.scss"
  [ -f 'src/app/core/theme.scss' ] && echo "Existe o src/app/core/theme.scss" || echo "Não existe o src/app/core/theme.scss"
  [ -f 'src/app/app.component.html' ] && echo "Existe o src/app/app.component.html" || echo "Não existe o src/app/app.component.html"
  [ -f 'src/app/app.component.scss' ] && echo "Existe o src/app/app.component.scss" || echo "Não existe o src/app/app.component.scss"
  [ -f 'src/app/app.component.spec.ts' ] && echo "Existe o src/app/app.component.spec.ts" || echo "Não existe o src/app/app.component.spec.ts"
  [ -f 'src/app/app.component.ts' ] && echo "Existe o src/app/app.component.ts" || echo "Não existe o src/app/app.component.ts"
  [ -f 'src/app/app.config.server.ts' ] && echo "Existe o src/app/app.config.server.ts" || echo "Não existe o src/app/app.config.server.ts"
  [ -f 'src/app/app.config.ts' ] && echo "Existe o src/app/app.config.ts" || echo "Não existe o src/app/app.config.ts"
  [ -f 'src/app/app.routes.ts' ] && echo "Existe o src/app/app.routes.ts" || echo "Não existe o src/app/app.routes.ts"
  [ -f 'src/environments/environment.dev.ts' ] && echo "Existe o src/environments/environments.desenv.ts" || echo "Não existe o src/environments/environments.desenv.ts"
  [ -f 'src/environments/environment.stage.ts' ] && echo "Existe o src/environments/environments.homolog.ts" || echo "Não existe o src/environments/environments.homolog.ts"
  [ -f 'src/environments/environment.ts' ] && echo "Existe o src/environments/environments.ts" || echo "Não existe o src/environments/environments.ts"
  [ -f 'src/index.html' ] && echo "Existe o src/index.html" || echo "Não existe o src/index.html"
  [ -f 'src/main.server.ts' ] && echo "Existe o src/main.server.ts" || echo "Não existe o src/main.server.ts"
  [ -f 'src/main.ts' ] && echo "Existe o src/main.ts" || echo "Não existe o src/main.ts"
  [ -f 'src/styles.scss' ] && echo "Existe o src/styles.scss" || echo "Não existe o src/styles.scss"
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