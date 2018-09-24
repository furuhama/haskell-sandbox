#!/usr/bin/env sh

# run app/Main.hs with Modules

# NOTE: Shell commands written below are equal to
# `stack build --exec haskell-sandbox-exe`

stack build
stack exec haskell-sandbox-exe
