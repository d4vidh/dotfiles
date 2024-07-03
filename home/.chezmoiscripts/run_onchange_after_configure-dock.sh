#!/bin/bash

set -eufo pipefail

trap 'killall Dock' EXIT

declare -a remove_labels=(
  Safari
  Maps
  Freeform
  Keynote
  Numbers
  Pages
)

for label in "${remove_labels[@]}"; do
  dockutil --no-restart --remove "${label}" || true
done
