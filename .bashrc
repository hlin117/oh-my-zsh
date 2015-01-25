if [ -d /class/cs225 ] ; then
	export PATH=/class/cs225/llvm/bin:$PATH
fi

export PS1="[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]]\$ "

source $HOME/.acd_func.sh
source $HOME/.aliases.sh
source $HOME/.ssh_aliases.sh

. $HOME/.shellrc.load
