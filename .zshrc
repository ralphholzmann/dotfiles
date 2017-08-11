# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
DEFAULT_USER="ralph"
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-open yarn npm)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# Import stuff local to this install
if [[ -e $HOME/.local ]]
then
  source $HOME/.local
fi

if [[ -e $HOME/.nvm/nvm.sh ]]
then
  source $HOME/.nvm/nvm.sh
fi

export PATH="/usr/local/sbin:/Users/ralph/.cargo/bin:$PATH"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [[ -n ${ZSH_VERSION-} ]]; then
	autoload -U +X bashcompinit && bashcompinit
    complete -o nospace -F _fab_complete fab
fi
export PATH="$HOME/.yarn/bin:$PATH"
source /Users/ralph/.npm-run.plugin.zsh/npm-run.plugin.zsh
eval "$(hub alias -s)"
