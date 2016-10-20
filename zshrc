# Path to your oh-my-zsh installation.
export ZSH=/home/sfrancisco/.oh-my-zsh
DEFAULT_USER=$(whoami)
export DEFAULT_USER

# Set the zsh theme
ZSH_THEME="agnoster"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# History timestamp
HIST_STAMPS="yyyy-mm-dd"

# Load zsh plugins. Add wisely, as too many plugins slow down shell startup.
#plugins=(git colored-man-pages cp dnf docker fedora vagrant history man sudo )
plugins=(
#aws
colored-man-pages
cp
dnf
fedora
rsync
systemd
#terraform
#terminitor
vagrant
#virtualenv
sudo
#docker
firewalld
git
ssh-agent)

# Vagrant environment variables
VAGRANT_HOME=${HOME}/.vagrant.d                                                                                                     
VAGRANT_DEFAULT_PROVIDER=virtualbox
export VAGRANT_HOME VAGRANT_DEFAULT_PROVIDER

# Aliases

ENV=$(hostnamectl status | grep -i Location | awk {'print $2'})
export ENV

if [ "$ENV" = 'work' ]; then
  alias cd-dotfiles="cd ~sfrancisco/Projects/github-pessoal/dotfiles/ && echo && pwd && echo && ll && echo && git status"
  alias cd-vagrantfiles="cd ~sfrancisco/Projects/github-pessoal/vagrantfiles/ && echo && pwd && echo && ll && echo && git status"
elif [ "$ENV" = 'home' ]; then
  alias cd-dotfiles="<insert home path here>"
  alias cd-vagrantfiles="<insert home path here>"
else
  echo "ERROR: Some aliases may be not correctly configured. Have you checked your hostnamectl environment settings?"
fi

# VPN aliases
#alias connect-vpn-corp="/opt/forticlientsslvpn-4.4.2323/forticlientsslvpn/64bit/forticlientsslvpn_cli --server vpn.muxi.com.br:10443 --vpnuser sfrancisco --pkcs12 /opt/forticlientsslvpn-4.4.2323/client-vpn.muxi.com.br.cert.p12"
#alias connect-vpn-muxi-dc="cd /etc/openvpn/sfrancisco-muxi && sudo /usr/sbin/openvpn --config /etc/openvpn/sfrancisco-muxi/sfrancisco-muxi.ovpn"
# rdesktop alias
alias connect-sup6371v="rdesktop-vrdp 10.10.15.200 -u sfrancisco -d appicorp -k pt-br &"
alias connect-rdesktop-sup6371v-1080x940="rdesktop -g 1080x940 -u sfrancisco -d appicorp -k pt-br sup6371v:3389 &"
alias connect-sup6372v="rdesktop-vrdp 10.10.15.7 -u sfrancisco -d appicorp -k pt-br &"
alias connect-rdesktop-appirj01-1080x940="rdesktop -g 1080x940 -u sfrancisco.01 -d appicorp -k pt-br appirj01:3389 &"

# System commands alias to improve its outputs
alias ll="ls -lrth --color"
alias df="df -hT --sync --total"

# Settings to enable basic syntax highlighting to the less command
# The package 'source-hightligh' needs to be installed.
# sudo dnf install source-highlight
export LESSOPEN="| $(which src-hilite-lesspipe.sh) %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'

# Custom commands
alias cd-git-muxi="cd ~sfrancisco/Projects/gitlab-muxi/ && ll"
alias cd-git-pessoal="cd ~sfrancisco/Projects/github-pessoal/ && ll"

# User configuration. Always let these two lines at the end of the .zshrc file.
export PATH="/opt/terraform/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh
