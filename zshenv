#!usr/bin/env zsh

funcion exists() {
  command -v $1 >/dev/null 2>&1
}