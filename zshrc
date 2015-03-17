# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

setopt rmstarsilent
CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
COMPLETION_WAITING_DOTS="true"
alias reloadrc="source ~/.zshrc"
alias commitrc="(cd ~/dotfiles && git commit -am minor_fix && git pull && git push)"
alias rcstatus="(cd ~/dotfiles && git status)"
alias rcdiff="(cd ~/dotfiles && git diff)"
alias rclog="(cd ~/dotfiles && git log)"
autoload -U zmv

# Language charset

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

#Mad aliases

alias gti=git
alias g=git
alias pp="git pp"
alias st="git st"
alias pow="git aa"

alias jgrep='find . -name "*.java"|xargs grep'
alias hgrep='find . -name "*.hs"|xargs grep'
alias pomgrep='find . -name pom.xml|xargs grep'
alias xmlgrep='find . -name "*.xml"|xargs grep'
alias htmlgrep='find . -name "*.html"|xargs grep'
alias cssgrep='find . -name "*.css"|xargs grep'
alias rbgrep='find . -name "*.rb"|xargs grep'
alias erbgrep='find . -name "*.erb"|xargs grep'
alias jspgrep='find . -name "*.jsp"|xargs grep'
alias jsgrep='find . -name "*.js"|xargs grep'
alias propgrep='find . -name "*.properties"|xargs grep'
alias robotgrep='find . -name "*.tsv"|xargs grep'
alias txtgrep='find . -name "*.txt"|xargs grep'
alias sqlgrep='find . -name "*.sql"|xargs grep'

alias httpserver='python -m SimpleHTTPServer'
alias chrometest="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --user-data-dir=/tmp/chrometest2 --incognito --disable-web-security --disable-popup-blocking&"
alias chrome="open -a Google\ Chrome"
alias editrc="vim ~/.zshrc&&source ~/.zshrc"
alias rssh="ssh -o 'ProxyCommand ssh jpaanane@pk.reaktor.fi nc %h %p'"
alias rscp="scp -o 'ProxyCommand ssh jpaanane@pk.reaktor.fi nc %h %p'"
alias startmongo="mongod --fork --config /usr/local/etc/mongod.conf"
alias mvndeps="mvn dependency:tree|less"

#Zsh options

unsetopt correct_all
setopt APPEND_HISTORY

#General path
export PATH=/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin

#Include local rc
source ~/.zshrc.local

# Java
export M2=$M2_HOME/bin
export PATH=$PATH:$M2
function setjdk() { if [ $# -ne 0 ];then export JAVA_HOME=`/usr/libexec/java_home -v $@`; fi; java -version; }
alias use_java7='setjdk 1.7'
alias use_java8='setjdk 1.8'
alias mvn7='use_java7 mvn'
alias mvn8='use_java8 mvn'
use_java8
# Haskell
export PATH=$PATH:/Users/juha/.cabal/bin
export PATH=$PATH:/usr/local/Cellar/haskell-platform/2012.4.0.0/bin
# Ruby
export PATH=$PATH:~/.rvm/bin/
export PATH=$PATH:/Users/jpaanane/.rvm/gems/ruby-1.9.3-p194/bin
export PATH=$PATH:/Users/jpaanane/.rvm/gems/ruby-1.9.3-p194@global/bin
export PATH=$PATH:/Users/jpaanane/.rvm/rubies/ruby-1.9.3-p194/bin
export PATH=$PATH:/Users/jpaanane/.rvm/bin
# NPM
export PATH=$PATH:/usr/local/share/npm/bin
# reaktor/script
export PATH=$PATH:/Users/jpaanane/reaktor/script
# X11
export PATH=$PATH:/opt/X11/bin


#MacPorts (disabled)
#export PATH=$PATH:/opt/local/bin
#export PATH=$PATH:/opt/local/sbin
#

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# use emacs key bindings in command-line editor
bindkey -e

alias myip='ifconfig|grep inet|grep netmask|grep broadcast|cut -f 2 -d " "'
alias sano='say -v Mikko'
