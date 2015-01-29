# NOTE: All of these invoke what would be needed for the bash shell.
source $HOME/.acd_func.sh
export PS1="[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]]\$ "

# All the rest will be used by both zsh and bash
source $HOME/.aliases.sh
source $HOME/.ssh_aliases.sh

. $HOME/.shellrc.load
