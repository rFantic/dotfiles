#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -X --group-directories-first'
alias mm='micromamba'
alias cdf='cd $(fd -L -t d | fzf)'
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nghia/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nghia/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nghia/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nghia/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(starship init bash)"
#nvm use latest
. "$HOME/.cargo/env"
