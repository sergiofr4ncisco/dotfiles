# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
PS1='\[\033[01;32m\]\u \[\033[00;36m\]em \[\033[01;36m\]\w \[\033[00;36m\]às \[\033[01;36m\]\t\n\[\033[01;32m\]⚡ \[\033[00;37m\]'
export PATH PS1
