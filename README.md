# dotfiles

My dotfiles managed with [`chezmoi`](https://www.chezmoi.io/).

## Prerequisites

### MacOS

#### 1. Install Homebrew

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
...
$ (echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ${HOME}/.zprofile
```

#### 2. Install 1Password via Homebrew cask

```shell
$ brew install --cask 1passord 1password-cli
```

#### 3. Sign-in 1Password

```shell
$ eval "$(op signin)"
```

### Linux

#### 1. Install zsh & set it as default login shell

```shell
$ sudo apt update
$ sudo apt-get install -y zsh
```

#### 2. Change login shell to zsh

```shell
$ chsh -s $(which zsh)
```

#### 3. Install 1Password CLI

Follow the procedures described in [this installation guide](https://developer.1password.com/docs/cli/get-started/).

#### 4. Sign-in 1Password

```shell
$ eval "$(op signin)"
```

## Usage

Install my dotfiles on new machine with a single command.

```shell
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply d4vidh
```

## Other dotfiles

* [twpayne's dotfiles](https://github.com/twpayne/dotfiles)
* [felipecrs's dotfiles](https://github.com/felipecrs/dotfiles)
* [g6ai's dotfiles](https://github.com/g6ai/dotfiles)
* [narze's dotfiles](https://github.com/narze/dotfiles)
