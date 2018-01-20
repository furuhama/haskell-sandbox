#!/bin/sh

# run app/Main.hs with Modules

# [WARNING] shell commands written below are equal to
# `stack build --exec haskell-sandbox-exe`

stack build
stack exec haskell-sandbox-exe

