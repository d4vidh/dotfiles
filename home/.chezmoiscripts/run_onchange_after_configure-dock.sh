#!/bin/bash

set -eufo pipefail

dockutil --no-restart --remove all

dockutil --no-restart --add '/Applications/Microsoft Edge.app'
dockutil --no-restart --add '/Applications/Notion.app'
dockutil --no-restart --add '/Applications/Notion Calendar.app'
dockutil --no-restart --add '/Applications/Notion Mail.app'
dockutil --no-restart --add '/Applications/Microsoft Excel.app'
dockutil --no-restart --add '/Applications/Microsoft PowerPoint.app'
dockutil --no-restart --add '/Applications/Microsoft Teams.app'
dockutil --no-restart --add '/Applications/KakaoTalk.app'
dockutil --no-restart --add '/Applications/ChatGPT.app'
dockutil --no-restart --add '/Applications/Visual Studio Code.app'
dockutil --no-restart --add '/Applications/1Password.app'

dockutil --no-restart --add '/System/Applications/App Store.app'
dockutil --no-restart --add '/System/Applications/System Settings.app'

killall Dock
