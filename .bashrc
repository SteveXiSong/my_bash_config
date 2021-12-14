export TERM=xterm-256color
# Prompt
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
PS1="${BLUE}(${RED}\w${BLUE}) ${NORMAL}\h ${RED}\$ ${NORMAL}"

#!/bin/bash
#notice: ubuntu must reconfig bash
#        sudo ln -sf /bin/bash /bin/sh
#bash_profile
unset USERNAME

#use bash_completion
#ubuntu : already exists
#readhat: rpm -ivh http://www.caliban.org/files/redhat/RPMS/noarch/bash-completion-20060301-1.noarch.rpm
#osx : brew install bash-completion
if [ "$PS1" ]
then
    if [ -f /etc/bash_completion ]
    then
        if [ -r /etc/bash_completion ]
        then
            . /etc/bash_completion
        fi
    fi
fi

# Gimme a huge history
#export HISTSIZE=50000
# Don't store duplicate lines in history
export HISTCONTROL=ignoreboth

#设置了Ls的目录颜色
export HOSTSHORT=`hostname`
export OS=`uname`;

#export LC_ALL='zh_CN.GBK'
export LC_ALL='en_US.UTF-8'
#export LANG='zh_CN.GBK'
export LANG='en_US.UTF-8'

export EDITOR='vim'
export SVN_EDITOR=vim

#shell promaote and title.
PROMPT_COMMAND='echo -ne "\033]0;[${HOSTSHORT}:`basename $PWD`\$]${PWD}\007"'
#PS1='[\u@\h:${YROOT_NAME}\w\$] '
#PS1='[\u@Luna \w\$] '


#all aliases
ALIASES=`\ls ~/.*aliases`
for f in $ALIASES
do
  if [ -f $f ];then
     . $f
  fi
done

#all completion
ALIASES=`\ls ~/.*completion`
for f in $ALIASES
do
  if [ -f $f ];then
     . $f
  fi
done


#need to install linuxlogo, sudo apt-get install linuxlogo
which linuxlogo > /dev/null 2>&1
if [ $? = 0 ]
then
    linuxlogo -L ubuntu -a
fi
#screenfetch

##
# Your previous /Users/ken/.bash_profile file was backed up as /Users/ken/.bash_profile.macports-saved_2013-02-20_at_22:52:45
##

# MacPorts Installer addition on 2013-02-20_at_22:52:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
