#!/bin/bash

####################
# NPM
####################

function npm-install() {
    npm install -g \
        @vue/cli \
        diff-so-fancy \
        sass \
		terminal-image-cli \
        uglify-js \
        uglifycss \
        webpack \
        webpack-cli \
        meta
}

npm-install
