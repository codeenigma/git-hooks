#!/bin/sh

# Perform actual hooks.
# @param hook-name
performHook(){
  for file in $(find "$GIT_DIR/.git/hooks/$1.d" -name "*.hook" -print -quit); do 
    /bin/sh "$file" "$@";
  done
}