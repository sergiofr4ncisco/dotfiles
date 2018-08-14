DEFAULT_USER=$(whoami)
export DEFAULT_USER

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/sfrancisco/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="amuse"
#ZSH_THEME="gnzh"
#ZSH_THEME="af-magic"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
#adb
#ant
#apache2-macports
#arcanist
#archlinux
#asdf
#autoenv
#autojump
#autopep8
aws
#battery
#bbedit
#bgnotify
#boot2docker
#bower
branch
#brew
#bundler
#bwana
#cabal
#cake
#cakephp3
#capistrano
#cargo
#cask
#catimg
#celery
#chruby
#chucknorris
#cloudapp
#codeclimate
#coffee
#colemak
colored-man-pages
colorize
command-not-found
#common-aliases
compleat
#composer
#copybuffer
copydir
copyfile
cp
#cpanm
#debian
dircycle
dirhistory
dirpersist
#django
#dnf
#docker
#docker-compose
#docker-machine
dotenv
#droplr
#eecms
#emacs
#ember-cli
#emoji
#emoji-clock
#emotty
#encode64
#extract
#fabric
#fancy-ctrl-z
#fasd
#fastfile
#fbterm
#fedora
#firewalld
#forklift
#fossil
#frontend-search
#gas
#gb
#geeknote
#gem
git
#git-extras
#gitfast
git-flow
#git-flow-avh
#github
#git-hubflow
gitignore
#git-prompt
#git-remote-branch
#glassfish
#globalias
gnu-utils
#go
#golang
#gpg-agent
#gradle
#grails
#grunt
#gulp
#hanami
#helm
#heroku
history
#history-substring-search
#httpie
#iterm2
#iwhois
#jake-node
#jhbuild
#jira
#jruby
#jsontools
#jump
#kate
#kitchen
#knife
#knife_ssh
#kops
#kubectl
#kube-ps1
#laravel
#laravel4
#laravel5
#last-working-dir
#lein
#lighthouse
#lol
#macports
#man
#marked2
#mercurial
#meteor
#mix
#mix-fast
#mosh
#mvn
#mysql-macports
#n98-magerun
#nanoc
#ng
#nmap
#node
#nomad
#npm
#npx
#nvm
#nyan
#oc
#osx
#pass
#paver
#pep8
#per-directory-history
#perl
#perms
#phing
#pip
#pj
#pod
#postgres
#pow
#powder
#powify
#profiles
#pyenv
#pylint
#python
#rails
#rake
#rake-fast
#rand-quote
#rbenv
#rbfu
#react-native
#rebar
#redis-cli
#repo
rsync
#ruby
#rust
#rvm
#safe-paste
#sbt
#scala
#scd
#screen
#scw
#sfffe
#shrink-path
#singlechar
#spring
#sprunge
ssh-agent
#stack
#sublime
sudo
#supervisor
#suse
#svn
#svn-fast-info
#swiftpm
#symfony
#symfony2
#systemadmin
#systemd
#taskwarrior
#terminalapp
#terminitor
terraform
#textastic
#textmate
#thefuck
#themes
#thor
#tig
#tmux
#tmux-cssh
#tmuxinator
#torrent
#tugboat
#ubuntu
#urltools
vagrant
#vault
#vim-interaction
#vi-mode
virtualenv
virtualenvwrapper
vundle
#wakeonlan
#wd
#web-search
#wp-cli
#xcode
#yarn
#yii
#yii2
yum
#z
#zeus
zsh-navigation-tools
zsh_reload
)
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

# System commands alias to improve its outputs
alias ll="ls -lrth --color"
alias lla="ls -lrtha --color"
alias df="df -hT --sync --total"


# Enable direnv to work properly
eval "$(direnv hook zsh)"

# Edit configs
# ~/.zshrc
alias edit-zshrc="vim $HOME/.zshrc"
# ~/.ssh/config
alias edit-ssh-config="vim $HOME/.ssh/config"

# Another cool alias just to show my public ip
alias my-ip="echo $(curl -s httpbin.org/ip | jq '.origin')"

# Search for the right git alias provided git zsh plugin
alias gsearch="alias | grep git | grep"

# Terraform alias
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfip="tfi && tfp"

# ec2-ssh
alias ec2-ssh="ec2-ssh -u $(whoami)"

# Settings for virtualenvwrapper
export WORKON_HOME=$HOME/code/.virtualenvs
export PROJECT_HOME=$HOME/code/muxi
source /usr/local/bin/virtualenvwrapper.sh

# Load aws command completion
source /usr/bin/aws_zsh_completer.sh

# Load oh-my-zsh settings
source $ZSH/oh-my-zsh.sh
