# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR="nvim"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# OCaml
[ -s /usr/local/bin/opam ] && eval $(opam env)

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Go
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# PHP
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
export PATH="$HOME/.composer/vendor/bin:$PATH"

# nvm / Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Set XDisplay
export DISPLAY=`grep nameserver /etc/resolv.conf | awk '{print $2}'`:0

export PATH="$HOME/.poetry/bin:$PATH"
