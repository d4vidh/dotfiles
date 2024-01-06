# shellcheck shell=bash

function is_asdf_plugin_installed() {
  local _plugin="$1"

  asdf list "${_plugin}" &>/dev/null
}

function is_asdf_package_installed() {
  local _plugin="$1"
  local _version="$2"

  asdf list "${_plugin}" "${_version}" &>/dev/null
}
