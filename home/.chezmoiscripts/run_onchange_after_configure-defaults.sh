#!/bin/bash

set -eufo pipefail

defaults write -g AppleMiniaturizeOnDoubleClick -int 0
defaults write -g NSAutomaticCapitalizationEnabled -int 0
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0
defaults write -g NSUserDictionaryReplacementItems '()'
