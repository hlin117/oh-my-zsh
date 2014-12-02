if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

##
# Your previous /Users/hlin117/.bash_profile file was backed up as /Users/hlin117/.bash_profile.macports-saved_2014-03-15_at_14:06:05
##

# MacPorts Installer addition on 2014-03-15_at_14:06:05: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Commented out because I don't use macports
# Finished adapting your PATH environment variable for use with MacPorts.

#export PYTHONPATH="/usr/local/lib/python2.7/site-packages/:$PYTHONPATH"
export PATH=/usr/local/sbin:$PATH

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
