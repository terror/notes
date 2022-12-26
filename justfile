set dotenv-load

export EDITOR := 'nvim'

alias c := check

default:
  just --list

check:
  shellcheck notes

forbid:
  ./bin/forbid

update:
  cp notes $HOME/dotfiles/bin
