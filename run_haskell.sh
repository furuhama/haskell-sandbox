#!/bin/sh

# return error when it gets too many args...
if [ $# -ge 2 ]
  then
    echo "An error occured. Too many args."
else
  # run single .hs file
  stack runghc $1
fi

