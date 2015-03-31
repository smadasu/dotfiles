# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export EDITOR=/usr/bin/vim
export LANG=en_US.utf8
export PATH=$PATH:~/bin:~/adt-bundle-linux-x86_64-20140321/sdk/platform-tools/:$HOME/node-v0.10.30-linux-x64/bin
alias ll='ls -lrt'
alias tmux='TERM=screen-256color-bce tmux'
alias gs='git status'

# Turn on 256 color support...
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi
source $HOME/.bash-git-prompt/gitprompt.sh
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
