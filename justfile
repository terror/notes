set dotenv-load

export EDITOR := 'nvim'

default:
  just --list

check:
  shellcheck notes

forbid:
  ./bin/forbid
