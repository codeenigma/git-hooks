#!/bin/sh

# Perform actual hooks.
# @param hook-name
performHook(){
  GIT_DIR=$(git rev-parse --show-toplevel 2> /dev/null)
  for file in $(find "$GIT_DIR/.git/hooks/$1.d" -name "*.hook" -print -quit); do 
    . "$file" "$@";
  done
}