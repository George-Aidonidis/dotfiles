source "$HOME/dotfiles/zsh/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
fpath=($fpath "$HOME/.zfunctions")

export PATH=$PATH
# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi


# Setting ag as the default source for fzf
# fzf (w/o pipe) will use ag instead of find
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git,node_modules,dist,build,vendor -g ""'
# To apply the command to CTRL-T as well
export UPDATE_ZSH_DAYS=3
# Set nvim as a global editor
export EDITOR='nvim'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export MONITOR='eDP1'
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=0
export UPDATE_ZSH_DAYS=3
export KEYTIMEOUT=1
neofetch

export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.npm-packages/bin:$VOLTA_HOME/bin"
