################################################
############### SHARED COMMANDS ###############
###############################################

source ~/.acd_func.sh
# source /opt/local/etc/bash_completion.d/git-completion.bash
alias linuxlabs='ssh -t halin2@remlnx.ews.illinois.edu'
alias altocumulus='ssh -t halin2@altocumulus.cloud.cs.illinois.edu'
shopt -s extglob # Allows you to exclude a file when moving using "mv". Use the !(FILE) to exclude

################################################
############### END SHARED COMMANDS ###############
###############################################


# Only executes if we're not on the mac
#if [ "$(HOSTNAME -s)" = "berlin" ]
#then
#	# Remember to have these lines in the beginning of your start:
#	#if [ -f /etc/bash_completion ]; then
#	#	. /etc/bash_completion
#	#fi
#
#	export GIT_PS1_SHOWDIRTYSTATE=1
	export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] " 
#
# Only for the mac
#else

# Currently doesnt work. But if it did work, then it would change the prompt depending
# on whether the mode is insert or not
function something() {
	TEST=`bind -v | awk '/keymap/ {print $NF}'`
	if [ "$TEST" = 'vi-insert' ]; then
	   echo -ne "\033]12;Green\007"
	else
	   echo -ne "\033]12;Red\007"
	fi
}

	export PS1="[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]]\$ " 
	export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

	viewer() {
		open -a preview "$1"
	}
	alias view=viewer

	alias ll='ls -lG'
	
	latex() {
		pdflatex -interaction=batchmode "$1"
	}
	alias qpdflatex=latex

	alias url="open -a /Applications/Google\ Chrome.app"

#fi
# Miscellaneous other settings and aliases
# This is uaully the case for a linux box
#if [ "$(HOSTNAME -s)" = "berlin" ] 
#then
	alias open='open .'
#
# Source: osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
#else
#	alias open='open .'
#	alias ls='ls --color' # NOTE THERE'S A BUG HERE. MacOS doesn't have this option
	export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad

	# The dropbox college directory
	alias college='cd ~/Dropbox/college'
	alias classes='cd ~/Dropbox/college/classes'

function swap() {
	local TMPFILE=tmp.$$
	mv "$1" $TMPFILE
	mv "$2" "$1"
	mv $TMPFILE "$2"
}
#fi

alias define=dict

function dict() {
	sdcv $1 | less
}

alias course_server='ssh halin2@sftp.courses.engr.illinois.edu'
