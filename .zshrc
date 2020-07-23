# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Some good themes:
# Soliah, alanpeabody, cloud, crunch, dallas, dieter, eastwood,
# gallois, godzilla, gnzh, kphoen, mrtazz, muse, pygmalion, steeef,
# terminalparty, blinks

ZSH_THEME="hlin"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# This below allows me to open only certain files in vim.
zstyle ':completion:*:*:vim:*' file-patterns '^*.(aux|log|pdf|out):source-files' '*:all-files'

# User configuration

#export GEM_PATH=/Users/myusername/Tools/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0
#export GEM_SPEC_CACHE=/Users/myusername/Tools/.rbenv/versions/2.1.0/lib/ruby/gems/specs

export PATH="/Users/hlin117/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/hlin117/bin"
export PATH="/Users/hlin117/miniconda2/bin:$PATH"
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/
if type "matlab" > /dev/null; then
    export PATH="/Applications/MATLAB_R2015a.app/bin:$PATH"
fi
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Extra stuff
source $HOME/.aliases.sh
source $HOME/.ssh_aliases.sh
if type "jump-bin" > /dev/null; then
    source `jump-bin --zsh-integration`
fi
export GIT_EDITOR=vim

. $HOME/.shellrc.load

# OPAM configuration
. /Users/hlin117/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
