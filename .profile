# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR="nvim"

# Go
export PATH=$PATH:/usr/local/go/bin

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# PHP
export PATH="/home/ozoku/.composer/vendor/bin:$PATH"

# Deno
export DENO_INSTALL="/home/ozoku/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# OCaml
[ -s /usr/local/bin/opam ] && eval $(opam env)

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm / Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Set XDisplay
export HOST_IP="$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')"
export DISPLAY=$HOST_IP:0
