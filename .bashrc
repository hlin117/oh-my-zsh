
if [ -d /class/cs225 ] ; then
	export PATH=/class/cs225/llvm/bin:$PATH
fi

source $HOME/.acd_func.sh
source $HOME/.aliases.sh
source $HOME/.ssh_aliases.sh

. $HOME/.shellrc.load
