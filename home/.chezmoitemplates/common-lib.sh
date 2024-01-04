# shellcheck shell=bash

function log_color() {
  local _code="$1"
  shift

  printf "\033[${_code}m%s\033[0m\n" "$*" >&2
}

function log_red() {
  log_color "1;31" "$@"
}

function log_green() {
  log_color "1;32" "$@"
}

function log_yellow() {
  log_color "1;33" "$@"
}

function log_blue() {
  log_color "1;34" "$@"
}

function log_task() {
  log_blue "📋" "$@"
}

function log_info() {
  log_blue "ℹ️ " "$@"
}

function log_warning() {
  log_yellow "📣" "$@"
}

function log_error() {
  log_red "❌" "$@"
}

function log_success() {
  log_green "✅" "$@"
}
