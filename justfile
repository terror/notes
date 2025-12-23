set dotenv-load

export EDITOR := 'nvim'

alias c := check
alias f := fmt

default:
  just --list

all: check forbid

[group: 'check']
check:
  shellcheck notes

[group: 'dev']
dev-deps:
  brew install \
    bat \
    fd \
    fzf \
    prettier \
    shellcheck \
    shfmt \
    terror/tap/present

[group: 'format']
fmt:
  shfmt --write notes

[group: 'check']
fmt-check:
  shfmt --diff notes

[group: 'check']
forbid:
  ./bin/forbid

[group: 'dev']
readme:
  present --in-place README.md
  prettier --write README.md
