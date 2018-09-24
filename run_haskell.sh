#!/usr/bin/env sh

# return an error when it gets two or more arguments
if [ $# -ge 2 ]; then
  echo "An error occured. Too many args."
else
  # run single .hs file
  stack runghc $1
fi

