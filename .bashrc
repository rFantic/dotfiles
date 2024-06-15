# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -X --group-directories-first'
alias cdf='cd $(fd -L -t d | fzf)'

eval "$(starship init bash)"
