#!/bin/bash
# ----------------------------------------- #
# Author: <Author Name>                     #
# Author Email: <Author Email>              #
# Description: <Script Description>         #
# Use Exemple:                              #
#   ...use example commands...              #
# ----------------------------------------- #

# IMPORTS -----------------------------------
source "another/shell/script/path.sh"

# VARIABLES ---------------------------------
VAR_NAME=value

# FUNCTIONS ---------------------------------
main(){
  echo "main"
}

# INITIAL TESTS -----------------------------
initialTestA(){
  if condition; then
    command ...
  fi
}

# FINAL TESTS -------------------------------
finalTestA(){
  if condition; then
    command ...
  fi
}

# EXECUTION ---------------------------------
initialTestA
main
finalTestA