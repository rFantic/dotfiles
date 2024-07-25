set PATH "$HOME/bin:$PATH"
set PATH "$HOME/.local/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source
starship init fish | source

bind -M insert \cf accept-autosuggestion

abbr -a ca conda activate
abbr -a pi pip install
abbr -a copy clipboard copy
abbr -a paste clipboard paste
abbr -a xo xdg-open
abbr -a gc google-chrome
abbr -a cdf "cd \$(find -type d | fzf)"

export LC_ALL=C
#export CUDA_HOME=/usr/local/cuda-12.2
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib/x86_64_linux-gnu/"
#export PATH="/usr/local/cuda-12.2/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f $HOME/miniconda3/bin/conda
    eval $HOME/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "$HOME/miniconda3/etc/fish/conf.d/conda.fish"
        . "$HOME/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "$HOME/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


thefuck --alias | source
