HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
zstyle :compinstall filename '/home/stefan/.zshrc'

autoload -U compinit
autoload -U colors && colors
autoload -U promptinit

compinit
promptinit

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd

CHROOT_NAME=""

if [ -n "${SCHROOT_CHROOT_NAME}" ]; then
	CHROOT_NAME="%U%B(${SCHROOT_CHROOT_NAME})%b%u "
fi

PS1="$fg[green]${CHROOT_NAME}%{%B%n@%m%b$fg[cyan]%} %d
%{$fg[white]%}%#%{$reset_color%} "
COLORS="--color=always"

precmd() {
	print ""
}

preexec() {
	print ""
}

alias ll="ls -l $COLORS"
alias la="ls -la $COLORS"
alias rm="rm -i"

alias cm="clear; make -j3"

alias sose="source setup"
alias djrs="manage.py runserver"
alias djsm="manage.py schemamigration --auto"
alias djmi="manage.py migrate"
alias djcs="manage.py collectstatic"
alias djum="manage.py makemessages -a"
alias djcm="manage.py compilemessages"
alias djm="manage.py"

alias via="source virtenv/bin/activate"

alias nemo="nemo --no-desktop"

# Completion.
fpath=(~/.zsh/completion $fpath)

export TERM=xterm
export PATH=$PATH:/home/stsch/bin
export EDITOR=vim
