# Enable tab completion
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


source ~/Documents/Bash/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/Documents/Bash/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# added by Anaconda 2.1.0 installer 
export PATH="/Users/alangou/anaconda/bin:$PATH" 
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin 
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

alias l='ls -l'
function today {
    echo "Today's date is:"
    date +"%A, %B %-d, %Y"
}

alias fuck='eval $(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for Mondays:
alias FUCK='fuck'

export PATH=$PATH:/opt/vagrant/bin/vagrant

source virtualenvwrapper.sh
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


