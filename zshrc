# links
# ln ~/.custom_zsh/zshrc ~/.zshrc 
# ln ~/.custom_zsh/themes/ys2.zsh-theme ~/.oh-my-zsh/themes/ys2.zsh-theme

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# best-themes-list - half-life, ys, steef, sorin, jonathan(line)
ZSH_THEME="ys2"

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
# ENABLE_CORRECTION="true"

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
# plugins=(git z extract dirpersist autoenv web-search)
plugins=(git z extract dirpersist autoenv)

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
    export EDITOR='vim'
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


export PYTHONDONTWRITEBYTECODE=False


# alias
alias a=alias
alias b='s !!'
alias c='cat'
alias d='dirs -v | head -20'
alias e='emacs'
alias h='history'
alias j=z
alias k='kill -9'
alias l='ls -1 --color'

alias m=man
alias t=tree
alias s=sudo

alias sy='rsync -raz --progress'
alias in='ping goo.gl'
alias sp='_ du -hs *'
alias df='df -h'
alias du='du -hs'
alias rf='rm -rf'

alias re='sudo shutdown -r 0'
alias ka='killall '
alias le=less
alias cl=clear
alias wi='whereis'

alias hg='history | grep'
alias hgi='history | grep -i'

alias ps='ps -ef'
alias pgi='ps -ef | grep -i'

alias sudo='sudo '
alias jobs='jobs -l'

alias ag='sudo apt-get'
alias ai='sudo apt-get install'
alias au='sudo apt-get update'
alias sz='source ~/.zshrc'
alias se='source .env'
alias s1='s2cctl start'
alias s0='s2cctl stop'


# python 
alias p='python'
alias py='python'
alias ipy='ipython'

alias pt="py.test "

alias pom="git push origin master"
alias pum="git push upstream master"

alias wo='workon'
alias wp='workon pearl'
alias we='workon exp'

alias pf='pip freeze | sort'
alias pi='pip install'
alias pun='pip uninstall'
alias pu='pip install --upgrade'
alias prm='pip uninstall'
alias pup='pip install --upgrade pip'

alias df='pydf'
alias du='ncdu'
alias top='htop'

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias f='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

# django
alias dj="python manage.py"

#alias di="python manage.py inspectdb"
#alias dt="python manage.py test"

alias drs="python manage.py runserver"
alias dr="python manage.py runserver_plus"

alias dsh="python manage.py shell"
alias ds="python manage.py shell_plus"

#alias dsm="python manage.py schemamigration"
#alias dsd="python manage.py syncdb"

alias dmm="python manage.py makemigrations"
alias dm="python manage.py migrate"

#alias ddd="python manage.py dumpdata"
#alias dld="python manage.py loaddata"



# git
alias gi="git init"
alias go="git clone"

alias lg1=log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
alias lg2=log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
alias lg="git lg1"


# mysql
alias ms="mysql"



echo "---------------------- sourced zsh ------------------------"
