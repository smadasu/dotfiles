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
source /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
export EDITOR=/usr/bin/vim
export LANG=en_US.utf8
export PATH=$PATH:~/bin:~/android-sdk-linux/platform-tools
alias ll='ls -lrt'
#alias tmux='TERM=screen-256color-bce tmux'
alias gis='git status'
alias gid='git diff'
alias eu='cd $HOME/dev/linux/kernel/eudyptula'
#alias vim='nvim'
#source $HOME/bash-git-prompt/gitprompt.sh
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
