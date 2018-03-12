# If you come from bash you might have to change your $PATH.
# export PATH=~/.local/bin/anaconda3/bin:$HOME/bin:/usr/local/bin:$PATH

# NPM stuff, MG - 2017-06-07
#export PATH="$HOME/.node_modules/bin:$PATH"

# Ruby stuff, MG - 2017-06-07
# export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/home/mischi/.oh-my-zsh"

export VMDTMPDIR="/tmp"
export TMPDIR="/tmp"
export STRIDEBIN="/home/mischi/bin/stride"

export WORKON_HOME="/home/mischi/.virtualenvs"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE="awesome-fontconfig"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git git-flow docker django common-aliases pass screen systemd extract emacs)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll='ls -lah'

alias rs="rsync -avz --progress"
alias vpnmpi='sudo vpnc vpnmpibp'

# rebind `vim` and `vi` to our `emacs` alias
alias vim="emacs"
alias vi="emacs"

# Set VISUAL and EDITOR to use emacs
export VISUAL="emacs"
export EDITOR="emacs"

DEFAULT_USER=mischi
prompt_context(){}

autoload -U bashcompinit
bashcompinit
#eval "$(_PIPENV_COMPLETE=source-zsh pipenv)"
#eval "$(_PIPENV_COMPLETE=$(pipenv --completion))"

# added by travis gem
[ -f /home/mischi/.travis/travis.sh ] && source /home/mischi/.travis/travis.sh

TERM=xterm-256color
