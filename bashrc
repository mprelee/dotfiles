# .bashrc
# Matt Prelee

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Make tmux work with mac solarized
alias tmux="TERM=screen-256color-bce tmux"

# Mac Aliases
alias ls='ls -lGp'
alias ll='ls -a'

if [ -x /usr/local/bin/gdircolors ]; then
    test -r ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"
fi

# http://bashrcgenerator.com/
export PS1="\[\033[38;5;33m\]\u\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;229m\]@\[$(tput sgr0)\]\[\033[38;5;230m\]\h:\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;34m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;28m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"


# added by travis gem
[ -f /Users/mprelee/.travis/travis.sh ] && source /Users/mprelee/.travis/travis.sh

#export PATH="/usr/local/anaconda3/bin:$PATH"
