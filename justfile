set dotenv-load

export EDITOR := 'nvim'

alias c := check
alias u := update

default:
  just --list

all: check forbid

check:
  shellcheck notes

dev-deps:
  brew install prettier fd bat fzf
  cargo install present

forbid:
  ./bin/forbid

update:
  cp notes $HOME/dotfiles/bin
  present --in-place README.md
  prettier --write README.md
