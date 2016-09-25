# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#PS1='\[\033[01;34m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h \[\033[01;36m\]\w \[\033[00;37m\](\$)\n\[\033[00;37m\][\t] \[\033[01;32m\]-► \[\033[00;37m\]'
#PS1='\[\033[00;36m\]\u em \[\033[01;36m\]\w \[\033[00;36m\]às \[\033[00;37m\]\t\n\[\033[01;32m\]\$ -► \[\033[00;37m\]'
PS1='\[\033[01;34m\]\u \[\033[00;36m\]em \[\033[01;36m\]\w \[\033[00;36m\]às \[\033[01;36m\]\t\n\[\033[01;32m\]\$ \[\033[00;37m\]'


# Vagrant environment variables added on Tuesday June 7 2016
VAGRANT_HOME=/home/sfrancisco/.vagrant.d
VAGRANT_DEFAULT_PROVIDER=virtualbox

# Alias
alias lab-rhce="cd /home/sfrancisco/virtualbox-vagrant-vms/vg-rhce-lab3"
alias connect-vpn-muxi-dc='cd /etc/openvpn/sfrancisco-muxi && sudo /usr/sbin/openvpn --config /etc/openvpn/sfrancisco-muxi/sfrancisco-muxi.ovpn'
alias df='df -hT --sync --total'
