# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls="ls --color=auto"
alias l="ls -CF"
alias ll='LC_COLLATE=C.UTF-8 ls -lAhF --color=auto'
alias vi=vim
alias dclog='docker-compose logs -f --tail=100'
alias cmdwatch=watch

# Custom exports
export VISUAL=vi
export EDITOR=$VISUAL
