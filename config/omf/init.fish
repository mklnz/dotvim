# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
    eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

# rbenv
set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths
status --is-interactive; and source (rbenv init -|psub)

# thefuck
thefuck --alias | source
