set dotenv-load

export EDITOR := 'nvim'

alias c := check
alias f := fmt

default:
  just --list

all: check forbid

check:
  shellcheck notes

dev-deps:
  brew install prettier fd bat fzf
  cargo install present

fmt:
  prettier --write README.md

forbid:
  ./bin/forbid

readme:
  present --in-place README.md
