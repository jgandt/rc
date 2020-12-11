###################################
# jpg Bash Env
# this file is sourced in ~/.bashrc
###################################

export EDITOR='/usr/bin/vim'

export PSQL_EDITOR='vim'

export PGUSER='jgandt'
export PGDATABASE='postgres'

export AWS_CONFIG_FILE=~/.aws.conf

### Set up go env vars
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

export PATH="/usr/local/bin:$PATH"

# Was having trouble with pip installing numpy...
# http://stackoverflow.com/questions/22388519/problems-with-pip-install-numpy-runtimeerror-broken-toolchain-cannot-link-a
# export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

# Yeah just force the CC to be gcc
# export CC="/usr/bin/gcc"

# Add .rbenv to path to allow shims
# export PATH="$HOME/.rbenv/bin:$PATH"

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

# Nodedev path (for nodedev package)
# export PATH="$HOME/.nodenv/bin:$PATH"

# yarn path
# export PATH="$HOME/.yarn/bin:$PATH"

# erlang/iex
# persistant session command history
# export ERL_AFLAGS="-kernel shell_history enabled"

# Add exenv to path
# export PATH="$HOME/.exenv/bin:$PATH"

# SECURITY! : Have rbenv ruby versions use the brew-installed openssl
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
