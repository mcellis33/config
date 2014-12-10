# Make sure that /usr/local/bin appears before /usr/bin
# I did this originally so that ctags would open exuberant-ctags instead of the built-in crappy ctags
export PATH="/usr/local/bin:$PATH"

# Set up mesa GOPATH
if [ -z ${GOPATH+x} ]; then export GOPATH=$HOME/ig/mesa/go; else export GOPATH=$HOME/ig/mesa/go:$GOPATH; fi

# Set up personal GOPATH
if [ -z ${GOPATH+x} ]; then export GOPATH=$HOME/go; else export GOPATH=$HOME/go:$GOPATH; fi
export PATH=$HOME/go/bin:$PATH
HISTCONTROL=ignoredups

source ~/.git-completion.sh
source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

alias lp="open /Applications/LightPaper.app"

# re-build
alias reb="make wipe clean && make"
# re-topo12
alias ret="make wipe && make && make topo12"

export DOCKER_HOST=tcp://:2375
