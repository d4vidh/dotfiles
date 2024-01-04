#!/bin/bash

# Install your dotfiles using chezmoi.
# This script is from https://github.com/twpayne/dotfiles/blob/master/install.sh

set -e # -e: exit on error

if [[ -z "$(command -v chezmoi || true)" ]]; then
  bin_dir="${HOME}/.local/bin"
  chezmoi="${bin_dir}/chezmoi"
  if [[ -n "$(command -v curl || true)" ]]; then
    sh -c "$(curl -fsSL https://git.io/chezmoi || true)" -- -b "${bin_dir}"
  elif [[ -n "$(command -v wget || true)" ]]; then
    sh -c "$(wget -qO- https://git.io/chezmoi || true)" -- -b "${bin_dir}"
  else
    echo 'To install chezmoi, you must have curl or wget installed.' >&2
    exit 1
  fi
else
  chezmoi=chezmoi
fi

# POSIX way to get script's dir: https://stackoverflow.com/a/29834779/12156188
script_dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0" || true)")" && pwd -P)"
# exec: replace current process with chezmoi init
exec "${chezmoi}" init --apply "--source=${script_dir}"
