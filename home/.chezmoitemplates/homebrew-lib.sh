# shellcheck shell=bash

function is_brew_package_installed() {
  local _package="$1"

  brew list --formula "${_package}" &>/dev/null
}

function is_brew_cask_package_installed() {
  local _package="$1"

  brew list --cask "${_package}" &>/dev/null
}
