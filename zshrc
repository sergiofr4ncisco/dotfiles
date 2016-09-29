# Path to your oh-my-zsh installation.
export ZSH=/home/sfrancisco/.oh-my-zsh

# Set the zsh theme
ZSH_THEME="gnzh"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# History timestamp
HIST_STAMPS="yyyy-mm-dd"

# Load zsh plugins. Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages cp dnf docker fedora vagrant history man sudo )

# User configuration
export PATH="/opt/terraform/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh

# Personal alias
alias connect-vpn-corp="/opt/forticlientsslvpn-4.4.2323/forticlientsslvpn/64bit/forticlientsslvpn_cli --server vpn.muxi.com.br:10443 --vpnuser sfrancisco --pkcs12 /opt/forticlientsslvpn-4.4.2323/client-vpn.muxi.com.br.cert.p12"
alias connect-vpn-muxi-dc="cd /etc/openvpn/sfrancisco-muxi && sudo /usr/sbin/openvpn --config /etc/openvpn/sfrancisco-muxi/sfrancisco-muxi.ovpn"
alias connect-sup6371v="rdesktop-vrdp 10.10.15.200 -u sfrancisco -d appicorp -k pt-br &"
alias connect-rdesktop-sup6371v-1080x940="rdesktop -g 1080x940 -u sfrancisco -d appicorp -k pt-br sup6371v:3389 &"
alias connect-sup6372v="rdesktop-vrdp 10.10.15.7 -u sfrancisco -d appicorp -k pt-br &"
alias connect-rdesktop-appirj01-1080x940="rdesktop -g 1080x940 -u sfrancisco.01 -d appicorp -k pt-br appirj01:3389 &"

alias ll="ls -lrth --color"
alias df="df -hT --sync --total"

# Vagrant environment variables
VAGRANT_HOME=${HOME}/.vagrant.d                                                                                                     
VAGRANT_DEFAULT_PROVIDER=virtualbox
