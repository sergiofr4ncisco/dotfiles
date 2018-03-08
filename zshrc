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
plugins=(
aws
colored-man-pages
cp
#dnf
#fedora
rsync
systemd
terraform
#terminitor
vagrant
virtualenv
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

## System commands alias to improve its outputs
alias ll="ls -lrth --color"
alias lla="ls -lrtha --color"
alias df="df -hT --sync --total"

## Environments switch
alias load-work-git="sudo hostnamectl set-location work && source ~/.zshrc"
alias load-home-git="sudo hostnamectl set-location home && source ~/.zshrc"
ENV=$(hostnamectl status | grep -i Location | awk {'print $2'})
export ENV

## AWS Profile/Accounts Switch (useful for awscli commands)
alias load-profile-aws-prod="export AWS_PROFILE=prod && echo 'Currently using PROD as AWS Profile'"
alias load-profile-aws-hmg="export AWS_PROFILE=hmg && echo 'Currently using HMG as AWS Profile"
# Load aws command completion
source /usr/bin/aws_zsh_completer.sh

## Git repos aliases
GIT_DIR_STATUS="echo && pwd && echo && ll && git status"
REPOS=(
dotfiles
vagrant
packer
ansible
ansible-manager
ansible-role-libreswan
terraform-management
terraform-redecard
)

#for REPO in $REPOS; do
#	GIT_DIR="/home/sfrancisco/Projects"
#	if [ "$ENV" = "work" ]; then
#		GIT_DIR="${GIT_DIR}/gitlab-muxi"
#	elif [ "$ENV" = "home" ]; then
#		GIT_DIR="${GIT_DIR}/github-pessoal"
#	else
#		echo "ERROR: Some aliases may be not correctly configured. Have you checked your hostnamectl environment settings?"
#	fi
#
#	# Define git aliases
#	alias cd-${REPO}-repo="cd ${GIT_DIR}/${REPO} && $GIT_DIR_STATUS"
#	alias pull-${REPO}-repo="echo 'Pulling updates from $REPO git repo' && cd-${REPO}-repo && echo && git pull"
#done
#
#function pull-all-repos () {
#	for REPO in $REPOS; do
#		echo "Pulling updates from $REPO git repo"
#		cd ${GIT_DIR}/${REPO}
#		echo
#		pwd
#		echo
#		ll
#		git pull
#		echo
#	done
#	cd
#}

# VPN aliases
alias connect-vpn-corp="sudo /opt/forticlient/64bit/forticlientsslvpn_cli --server vpn.muxi.com.br:10443 --vpnuser sfrancisco --pkcs12 /opt/forticlient/client-vpn.muxi.com.br.cert.p12"
alias connect-vpn-tivit="cd /etc/openvpn/tivit && sudo /usr/sbin/openvpn --config /etc/openvpn/tivit/sfrancisco-muxi.ovpn"
alias connect-vpn-aws-sa-east-1="cd /etc/openvpn/aws-sa-east-1 && sudo /usr/sbin/openvpn --config /etc/openvpn/aws-sa-east-1/sfrancisco-muxi.conf"
# rdesktop alias
alias connect-sup6371v="rdesktop -g 1024x768 -u sfrancisco -d appicorp -k pt-br 10.10.15.200:3389 &"
alias connect-sup6372v="rdesktop -g 1024x768 -u sfrancisco -d appicorp -k pt-br 10.10.15.7:3389 &"
alias connect-appirj01="rdesktop -g 1024x768 -u sfrancisco -d appicorp -k pt-br 10.10.5.11:3389 &"

# AWS Aliases
#alias aws-ec2-update-inventory="cd /home/sfrancisco/Projects/gitlab-muxi/ansible-manager && ./inventories/ec2.py > /tmp/aws-ec2-inventory-$(date +%Y%m%d%H%M).txt && cd /tmp"

# Enable direnv to work properly
eval "$(direnv hook zsh)"

# Edit ~/.zshrc
alias edit-zshrc="vim $HOME/.zshrc"

# Another cool alias just to show my public ip
alias my-ip="echo $(curl -s httpbin.org/ip | jq '.origin')"

# Settings for virtualenvwrapper
export PROJECT_HOME=$HOME/Projects/gitlab-muxi
export WORKON_HOME=$HOME/Projects/virtualenvs
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
##
### User configuration.
#### Always let these two lines at the end of the .zshrc file.
export PATH="$HOME/.bin:/opt/packer:/opt/terraform:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh
####
###
##
#
