# dotfiles

My dotfiles managed with [`chezmoi`](https://www.chezmoi.io/).

## Prerequisites

### macOS

#### 1. Install Homebrew

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
...
$ (echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ${HOME}/.zprofile
```

#### 2. Install 1password-cli via Homebrew cask

```shell
$ brew install --cask 1password-cli
```

#### 3. Sign-in 1password
```
$ eval "$(op signin)"
```

## Usage

Install my dotfiles on new machine with a single command.

```shell
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply d4vidh
```

## Other dotfiles

* [twpayne's dotfiles](https://github.com/twpayne/dotfiles)
* [felipecrs's dotfiles](https://github.com/felipecrs/dotfiles)
* [g6ai's dotfiles](https://github.com/g6ai/dotfiles)
* [narze's dotfiles](https://github.com/narze/dotfiles)
