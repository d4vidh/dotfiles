# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a chezmoi-managed dotfiles repository that configures a macOS development environment. The repository structure follows chezmoi conventions where dotfiles are stored with special prefixes in the `home/` directory.

## Key Commands

### Chezmoi Operations
- `chezmoi apply` - Apply all changes to the target directory (typically `$HOME`)
- `chezmoi diff` - Show differences between source state and target state
- `chezmoi add <file>` - Add an existing file to chezmoi management
- `chezmoi edit <file>` - Edit a file in the source directory
- `chezmoi status` - Show files that would be changed by `chezmoi apply`
- `chezmoi doctor` - Check for potential configuration issues

### Package Management
- Package installation is automated via the `run_onchange_before_install-packages.sh.tmpl` script
- Uses Homebrew to install both CLI tools and GUI applications (casks)
- Script runs automatically when the package list changes

## Architecture and File Structure

### Dotfile Naming Convention
- `dot_` prefix → `.` (e.g., `dot_zshrc` → `.zshrc`)
- `private_` prefix → files with restricted permissions
- `executable_` prefix → executable files
- `.tmpl` suffix → template files processed with Go templates

### Key Configuration Areas
- **Shell Configuration**: `dot_zshrc` and `dot_zprofile` configure zsh with Starship prompt, NVM, and UV tools
- **Git Configuration**: Template-based git config in `private_dot_config/git/config.tmpl`
- **SSH Configuration**: SSH keys and config managed as private templates
- **Package Management**: Homebrew formulae and casks defined in install script

### Scripts Directory
- `run_onchange_before_install-packages.sh.tmpl` - Installs Homebrew packages when list changes
- `run_onchange_after_configure-dock.sh` - Configures macOS Dock applications

## Development Tools Included
The configuration includes several development tools:
- Programming languages: Go, Node.js (via NVM), Python tools (UV, Ruff)
- Version control: Git, GitHub CLI (gh), GitLab CLI (glab)
- Development environments: VSCode, Cursor, Windsurf
- Containers: Docker Desktop, UTM
- Shell enhancements: Starship prompt, pre-commit hooks

## Commit Message Convention

This repository follows gitmoji conventions for commit messages. All commit messages should start with a meaningful emoji followed by a single space and then the commit message.

### Common Gitmoji Examples:
- ✨ `:sparkles:` - New features
- 🐛 `:bug:` - Bug fixes
- 📝 `:memo:` - Documentation updates
- 🎨 `:art:` - Code style/formatting improvements
- ♻️ `:recycle:` - Code refactoring
- ⚡ `:zap:` - Performance improvements
- 🔧 `:wrench:` - Configuration changes
- 📦 `:package:` - Package/dependency updates
- 🚀 `:rocket:` - Deployments
- 🔒 `:lock:` - Security improvements
- 🧹 `:broom:` - Code cleanup
- 💚 `:green_heart:` - CI/build fixes
- ⬆️ `:arrow_up:` - Dependency upgrades
- ⬇️ `:arrow_down:` - Dependency downgrades
- 🗑️ `:wastebasket:` - Remove code/files

**Format**: `<emoji> <description>`
**Example**: `✨ Add claude to brew cask list`

When creating commits, Claude Code should automatically format commit messages using this convention.