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

# System commands alias to improve its outputs
alias lll="ls -lrth --color"
alias llla="ls -lrtha --color"
alias df="df -hT --sync --total"

if [ "$ENV" = 'work' ]; then
  alias cd-git-muxi="cd ~sfrancisco/Projects/gitlab-muxi/ && lll"
  alias cd-git-pessoal="cd ~sfrancisco/Projects/github-pessoal/ && lll"
  alias cd-dotfiles="cd ~sfrancisco/Projects/github-pessoal/dotfiles/ && echo && pwd && echo && lll && echo && git status"
  alias cd-vagrant-pessoal="cd ~sfrancisco/Projects/github-pessoal/vagrant/ && echo && pwd && echo && lll && echo && git status"
  alias cd-packer-pessoal="cd ~sfrancisco/Projects/github-pessoal/packer/ && echo && pwd && echo && lll && echo && git status"
  alias cd-ansible-pessoal="cd ~sfrancisco/Projects/github-pessoal/ansible/ && echo && pwd && echo && lll && echo && git status"
elif [ "$ENV" = 'home' ]; then
  alias cd-dotfiles="cd ~sfrancisco/Projects/dotfiles/ && echo && pwd && echo && lll && echo && git status"
  alias cd-vagrant="cd ~sfrancisco/Projects/vagrant/ && echo && pwd && echo && lll && echo && git status"
  alias cd-packer="cd ~sfrancisco/Projects/packer/ && echo && pwd && echo && lll && echo && git status"
  alias cd-devops="cd ~sfrancisco/Projects/devops/ && echo && pwd && echo && lll && echo && git status"
  alias cd-git="cd ~sfrancisco/Projects/ && lll"
else
  echo "ERROR: Some aliases may be not correctly configured. Have you checked your hostnamectl environment settings?"
fi

# VPN aliases
#alias connect-vpn-corp="/opt/forticlientsslvpn-4.4.2323/forticlientsslvpn/64bit/forticlientsslvpn_cli --server vpn.muxi.com.br:10443 --vpnuser sfrancisco --pkcs12 /opt/forticlientsslvpn-4.4.2323/client-vpn.muxi.com.br.cert.p12"
#alias connect-vpn-muxi-dc="cd /etc/openvpn/sfrancisco-muxi && sudo /usr/sbin/openvpn --config /etc/openvpn/sfrancisco-muxi/sfrancisco-muxi.ovpn"
# rdesktop alias
alias connect-sup6371v="rdesktop -g 1024x768 -u sfrancisco -d appicorp -k pt-br 10.10.15.200:3389 &"
alias connect-sup6372v="rdesktop -g 1024x768 -u sfrancisco -d appicorp -k pt-br 10.10.15.7:3389 &"
alias connect-appirj01="rdesktop -g 1024x768 -u sfrancisco -d appicorp -k pt-br 10.10.5.11:3389 &"


# Settings to enable basic syntax highlighting to the less command
# The package 'source-hightligh' needs to be installed.
# sudo dnf install source-highlight
export LESSOPEN="| $(which src-hilite-lesspipe.sh) %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'

# Packer fix to Fedora 24
alias packer='/opt/packer/packer'

# User configuration. Always let these two lines at the end of the .zshrc file.
export PATH="/opt/packer:/opt/terraform:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh
