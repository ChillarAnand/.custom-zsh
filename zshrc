# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# best-themes-list - half-life, ys, steef, sorin, jonathan(line)
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.custom-zsh/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# source virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh


# emacs prelude
export TERM=xterm-256color




# alias 
# commands

alias sudo='sudo '

alias re='sudo shutdown -r 0'


alias c=cat
alias le=less

alias j=z
alias t=tree
alias l=ls

alias cl=clear
alias gt='gnome-terminal'


alias h='history'
alias hg='history | grep'
alias hgi='history | grep -i'


# ubuntu
alias ag='sudo apt-get'

alias ai='sudo apt-get install'
alias au='sudo apt-get update'
alias aug='sudo apt-get upgrade'

alias aar='sudo apt-get autoremove'
alias aac='sudo apt-get autoclean'


alias sz='source ~/.zshrc'
alias se='source .env'


alias p='ps -ef'
alias psg='ps -ef'

alias s1='s2cctl start'
alias s0='s2cctl stop'

# python 
alias py='ipython'
alias ipy='ipython'

alias pt="py.test "

alias f="fab"

alias wo='workon'
alias wp='workon pearl'
alias we='workon exp'

alias pf='pip freeze | sort'
alias pi='pip install'
alias pun='pip uninstall'

# django
alias dj="python manage.py"

alias di="python manage.py inspectdb"
alias dt="python manage.py test"

alias drs="python manage.py runserver"
alias dr="python manage.py runserver_plus"

alias dsh="python manage.py shell"
alias ds="python manage.py shell_plus"

alias dsm="python manage.py schemamigration"
alias dsd="python manage.py syncdb"

alias dmm="python manage.py makemigrations"
alias dm="python manage.py migrate"

alias ddd="python manage.py dumpdata"
alias dld="python manage.py loaddata"



# git
alias gi="git init"
alias go="git clone"


# mysql
alias ms="mysql"


echo "---------------------- sourced zsh ------------------------"
