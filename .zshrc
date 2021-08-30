# Setting $PATH
export PATH=$HOME/bin:/usr/local/bin:$HOME/Dotfiles/bin:/opt/apache-maven-3.6.3/bin:$PATH

# Path to the oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH theme to display.
ZSH_THEME="spaceship"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamps
HIST_STAMPS="yyyy-mm-dd"

# Oh-my-zsh plugins
plugins=( git docker cp zsh-syntax-highlighting )

# Spaceship settings
SPACESHIP_PROMPT_ORDER=( time user host dir git )
SPACESHIP_DOCKER_SHOW=true

# Sourcing oh-my-zsh and other shell helpers
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_exports
source $HOME/.zsh_aliases
source $HOME/Dotfiles/bin/*

M2_HOME="/opt/apache-maven-3.6.3"
JAVA_HOME="/usr/lib/jvm/java-11-amazon-corretto"

# Enable rainbow 
export CLICOLOR=1
export LSCOLORS=gx

alias l='ls | lolcat' 
alias la='ls -la | lolcat'
