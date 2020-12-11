# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Color definintions
COLOR1="\[\033[1;37m\]" # white
COLOR2="\[\033[0;37m\]" # gray
COLOR3="\[\033[0;31m\]" # red
COLOR4="\[\033[1;36m\]" # light cyan

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
     debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}'"$COLOR1"'\u@\h:'"$COLOR2"'\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# import all aliases from ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    #alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# if [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
# fi

# Enable git command line completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
# Handle completion for my g='git' alias
__git_complete g _git

#mac java_home
# export JAVA_HOME=/Library/Java/Home
# export LD_LIBRARY_PATH=/Library/Java/Extensions

# bash tmuxinator completions
if [ -f ~/.bin/tmuxinator.bash ]; then
    . ~/.bin/tmuxinator.bash
fi

# import all env from ~/.bash_env
if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

# bash history Ctrl-Up completion
bind '"\e[1\;5A": history-search-backward'
bind '"\e[1\;5B": history-search-forward'

# disable START/STOP output control
# see: http://here2serve.biz/mod/glossary/showentry.php?courseid=4&concept=stty
stty -ixon

# create rbenv as a function
# eval "$(rbenv init -)"

### node env setup (just like rbenv but for node)
# eval "$(nodenv init -)"

# exenv setup
# eval "$(exenv init -)"

# export PATH="$HOME/.yarn/bin:$PATH"
