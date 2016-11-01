export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
  export ZSH=/home/step/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="agnoster"
#ZSH_THEME="kardan"
#ZSH_THEME="kolo"
#ZSH_THEME="maran"
#ZSH_THEME="node"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="smt"
#ZSH_THEME="sorin"
#ZSH_THEME="theunraveler"
#ZSH_THEME="ys"
#ZSH_THEME="xxf"


# Current theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Settings for Powerlevel9k
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_STATUS_VERBOSE=false
#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='awesome-fontconfig'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/step/.gem/ruby/2.3.0/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Default user
DEFAULT_USER="step"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias git-yolo="git push --force"
alias nein="echo Doch!"
eval "$(thefuck --alias)"

alias pclean="sudo pacman -Sc && rm  -d -r -f ~/.cache/pacaur/*"
alias updt="pacaur -Syyu && gem update && apm update && upgrade_oh_my_zsh"

alias newsic="python ~/code/newsic/dev/newsic.py"
alias steam="STEAM_RUNTIME=0 steam"
alias steam-wine='WINEDEBUG=-all wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe -no-cef-sandbox >/dev/null 2>&1 &'

# needs polishing (e.g. via bash script for toggling these services)
# srv and gogs for toggling would be more convenient

alias srvon="systemctl start mariadb.service httpd.service"
alias srvoff="systemctl stop mariadb.service httpd.service"
alias gogson="systemctl start mariadb.service gogs.service"
alias gogsoff="systemctl stop mariadb.service gogs.service"

alias koel="cd ~/code/koel && php artisan serve"

# keychain on bootup
eval `keychain --eval --quiet --agents ssh id_rsa`

#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
