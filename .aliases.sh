function swap() {
    if [ ! -f "$1" ] ; then
        echo "$1 does not exist"
        return 1
    fi

    if [ ! -f "$2" ] ; then
        echo "$2 does not exist"
        return 1
    fi

	local TMPFILE=tmp.$$
	mv "$1" $TMPFILE
	mv "$2" "$1"
	mv $TMPFILE "$2"
}

alias vi='vim'
alias tree='tree -C'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

################################################################################
# EVERYTHING THAT BELONGS ON THE MAC
################################################################################
if [ "$USER" = "hlin117" ] ; then

    alias jp='jump'

    # Using the gnu `ls` command instead of the bsd `ls` command
    #hidden="--ignore='Applications'"
    alias ls='gls --color=always --hide="Applications" --hide="Documents" --hide="Music" --hide="Downloads" --hide="Pictures" --hide="Public" --hide="Desktop" --hide="Movies" --hide="*.pyc"'

    # BEGIN VIEW DEFINITION
    viewer() {
        open -a preview "$1"
    }
    alias view=viewer

    _view() {
        local cur
        reply=( `ls ${cur}*.pdf` )
        return 0
    }
    compctl -K _view -S '' viewer
    # END VIEW DEFINITION

    # BEGIN LATEX DEFINITION
    latex() {
        pdflatex -interaction=batchmode "$1"
    }
    alias qpdflatex=latex

    _latex() {
        local cur
        reply=( `ls ${cur}*.tex` )
        return 0
    }
    compctl -K _latex -S '' latex
    # END VIEW DEFINITION

    # BEGIN DICT DEFINITION
    alias define=dict

    function dict() {
        sdcv $1 | less
    }
    # END DICT DEFINITION

    if [ -d "/usr/local/nltk_data" ] ; then
        export NLTK_DATA="/usr/local/nltk_data":$NLTK_DATA
    fi
fi

################################################################################
# EVERYTHING THAT BELONGS TO THE LINUX LABS
################################################################################
if [ "$USER" = "halin2" ] ; then
    alias ls='ls --color=auto'
    alias tmux="TERM=screen-256color-bce tmux"

    if [ -d /class/cs225 ] ; then
        export PATH="/class/cs225/llvm/bin":$PATH
    else
        echo "Warning: Clang is not loaded"
    fi
fi
