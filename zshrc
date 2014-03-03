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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_12.jdk/Contents/Home
export JAVA_HOME=$JRE_HOME

alias gti=git
alias g=git

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
alias hours="javaws https://hours.reaktor.fi/download/app/Hours.jnlp"
alias editrc="vim ~/.zshrc&&source ~/.zshrc"
unsetopt correct_all

export PATH=
# Java
export REBEL_HOME=~/Dropbox/Tools/jrebel
export M2=$M2_HOME/bin
export PATH=$PATH:$M2
export PATH=$PATH:$JAVA_HOME/bin
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

#General path
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin

#MacPorts (disabled)
#export PATH=$PATH:/opt/local/bin
#export PATH=$PATH:/opt/local/sbin
#

# JPD stuffs
export ANT_HOME=~/reaktor/elisa/jpd/devel/common/ant
export ANT_OPTS='-ea -Xmx1024m -XX:MaxPermSize=256m'
export PATH=$PATH:$ANT_HOME/bin
export PATH=$PATH:$ANT_HOME/bin
alias ia='ant -Dproject.qualifier=-SNAPSHOT'
alias eunetlocal="eunet;ia;eunetremove;ln -s $HOME/.ivy2/local-snapshot/jpd/eunet $HOME/.m2/repository/jpd"
alias eunetremove="rm -rf $HOME/.m2/repository/jpd/eunet"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
