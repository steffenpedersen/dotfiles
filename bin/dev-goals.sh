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

function dev-goals-video() {
  if [ $1 = mac ]; then
      vim $HOME/Dropbox/Web/Git/dev-goals/lists/videos.md
  elif [ $1 = linux ]; then
      vim $HOME/Sites/WWW/dev-goals/lists/videos.md
  else
      print "Please define a device"
  fi
}

function dev-goals-commit() {
  if [ $1 = mac ]; then
      cd $HOME/Dropbox/Web/Git/dev-goals
  elif [ $1 = linux ]; then
      cd $HOME/Sites/WWW/dev-goals
  else
      print "Please define a device"
      break
  fi

  git checkout master
  git add .
  git commit -m "$2"
  git push origin master
  open http://github.com/steffenpedersen/dev-goals
}
