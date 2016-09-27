# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1='\[\033[01;32m\]\u \[\033[00;36m\]em \[\033[01;36m\]\w \[\033[00;36m\]às \[\033[01;36m\]\t\n\[\033[01;32m\]⚡ \[\033[00;37m\]'

alias ll='ls -lrth --color'
alias df='df -hT --sync --total'
alias connect-rdesktop-sup6371v-1080x940='rdesktop -g 1080x940 -u sfrancisco -d appicorp -k pt-br sup6371v:3389 &'
alias connect-rdesktop-appirj01-1080x940='rdesktop -g 1080x940 -u sfrancisco.01 -d appicorp -k pt-br appirj01:3389 &'
alias connect-vpn-muxi-dc='cd /etc/openvpn/sfrancisco-muxi && sudo /usr/sbin/openvpn --config /etc/openvpn/sfrancisco-muxi/sfrancisco-muxi.ovpn'

getpasswd () {
	local randompasswd=$(date | md5sum)
	echo "New random password generated: $randompasswd"
}

# Vagrant environment variables added on Tuesday June 7 2016
VAGRANT_HOME=/home/sfrancisco/.vagrant.d
VAGRANT_DEFAULT_PROVIDER=virtualbox
