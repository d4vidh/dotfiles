# shellcheck shell=bash

function is_brew_package_installed() {
  local _package="$1"

  brew list --formula "${_package}" &>/dev/null
}

function is_brew_cask_package_installed() {
  local _package="$1"

  brew list --cask "${_package}" &>/dev/null
}

# {{ if eq .chezmoi.arch "arm64" }}
readonly homebrew_prefix="/opt/homebrew"
# {{ else }}
# shellcheck disable=SC2034
readonly homebrew_prefix="/usr/local"
# {{ end }}
