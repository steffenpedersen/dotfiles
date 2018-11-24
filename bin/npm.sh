#!/bin/bash

# If you get the error:
# This is probably not a problem with npm.
# There is likely additional logging output.
function npm-remove() {
  rm -rf node_module
  rm package-lock.json
  npm cache clear --force
  npm install
}
