if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

export EDITOR=/usr/bin/nvim
export FILEMANAGER=/usr/bin/nautilus
export MAINBROWSER=/usr/bin/firefox-developer-edition
export SECONDARYBROWSER=/usr/bin/chromium
export PATH="$PATH:$(du "$HOME/dotfiles/scripts/" | cut -f2 | tr '\n' ':')"
. $HOME/dotfiles/scripts/wayland/wayland-active-keyboard
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
