set PATH "$HOME/bin:$PATH"
set PATH "$HOME/.local/bin:$PATH"
set PATH "$HOME/.cargo/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source
starship init fish | source
#thefuck --alias | source

bind -M insert \cf accept-autosuggestion

abbr -a ca conda activate
abbr -a copy clipboard copy
abbr -a paste clipboard paste
abbr -a xo xdg-open
abbr -a gc google-chrome
abbr -a cdf "cd \$(find -type d | fzf)"
abbr -a ui uv pip install

export LC_ALL=C
#export CUDA_HOME=/usr/local/cuda-12.2
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib/x86_64_linux-gnu/"
#export PATH="/usr/local/cuda-12.2/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

thefuck --alias | source
fish_add_path /home/nghia/.pixi/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/nghia/miniconda3/bin/conda
    eval /home/nghia/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/nghia/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/nghia/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/nghia/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

function cursor
    /opt/cursor.appimage --no-sandbox $argv > /dev/null 2>&1 & disown
end
