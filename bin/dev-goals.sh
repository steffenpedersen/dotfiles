#!/bin/bash

function dev-goals-add() {
  if [ $# -eq 0 ]; then
      print "Please add something (dev-goals mac video)"
  elif [ $1 = mac ]; then
      vim $HOME/Dropbox/Web/Git/dev-goals/lists/"$2"s.md
  elif [ $1 = linux ]; then
      vim $HOME/Sites/WWW/dev-goals/lists/"$2"s.md
  else
      print "Please define a device"
  fi
}
