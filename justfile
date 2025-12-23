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
  brew install \
    bat \
    fd \
    fzf \
    prettier \
    shfmt \
    terror/tap/present

fmt:
  shfmt --write notes

forbid:
  ./bin/forbid

readme:
  present --in-place README.md
