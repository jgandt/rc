###################################
# jpg Bash Aliases
# this file is sourced in ~/.bashrc
# order of aliases is important!
###################################

###################################
# pwd aliases
###################################

# current directory only
alias cwd='pwd | sed "s/.*\///g"'

###################################
# ls aliases
###################################

# ls - colors
alias ls='ls -G'
alias dir='ls --format=vertical'
alias vdir='ls --format=long'

# ls - long
alias ll='ls -al'
alias la='ls -A'
alias l='ls -al'

##################################
# find aliases
##################################
alias jpgfind='find ./ -name '

##################################
# grep aliases
##################################

# grep - colors
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# grep - ignore case
alias grepi='grep -i'
alias fgrepi='fgrep -i'
alias egrepi='egrep -i'

# general grep
alias ggrep='grep -Ri'

##################################
# ps aliases
##################################

# grep on ps -ef
alias pgi='ps -ef | grepi'

##################################
# pip alias
##################################

alias pip='pip3'

##################################
# vi alias
##################################

# set vi to vim
alias vi='vim'

##################################
# find files or folders with
#	in a size range
##################################

# set gig
alias gig='du -h | grep -E ^[0-9\|.]+G[.]*'

# set meg
alias meg='du -h | grep -E ^[0-9\|.]+M[.]*'

##################################
# Bundler Aliases
##################################

# bundle exec
alias be='bundle exec'

##################################
# tmux Aliases
##################################

alias tmux="TERM='xterm-256color' tmux"
alias nmux='tmux new -s'
alias mux='tmuxinator'

##################################
# git Aliases
##################################
# alias git to hub
alias git='hub'
# just use g
alias g='git'

##################################
# clear swap files
##################################
alias cswp="find ./ -name '*.sw[op]' | xargs rm"
