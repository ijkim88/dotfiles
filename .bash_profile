# .bash_profile

if [ ${TERM} == 'xterm' ]; then
    export TERM='xterm-256color'
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export EDITOR='vim'

# History settings
# HISTSIZE=<entries>
# HISTIGNORE='<cmd>:<cmd>:...'
# HISTCONTROL='ignoredups|ignorespace|ignoreboth'
export HISTSIZE=10000
export HISTIGNORE='clear:history'
export HISTCONTROL='ignoreboth'

# Homebrew
if [ -x "$(command -v brew)" ]; then
    eval $(brew shellenv)
fi
