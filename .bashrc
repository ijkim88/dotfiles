# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi='TERM=screen-256color vim'
alias ll='ls -la --color'
alias tree='tree -C -I "__pycache__|*.pyc"'
