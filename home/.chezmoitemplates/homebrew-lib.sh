# shellcheck shell=bash

# {{ if eq .chezmoi.arch "arm64" }}
readonly homebrew_prefix="/opt/homebrew"
# {{ else }}
# shellcheck disable=SC2034
readonly homebrew_prefix="/usr/local"
# {{ end }}
