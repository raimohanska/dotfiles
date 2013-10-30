# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_12.jdk/Contents/Home
export JAVA_HOME=$JRE_HOME

export PATH=/Users/jpaanane/.rvm/gems/ruby-1.9.3-p194/bin:/Users/jpaanane/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/jpaanane/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/jpaanane/.rvm/bin:/usr/local/share/npm/bin:/bin:/Users/jpaanane/.rvm/bin/:/Users/jpaanane/Library/Haskell/bin/:/opt/local/bin:/opt/local/sbin:/Users/jpaanane/reaktor/scripts:/usr/local/bin:$JAVA_HOME/bin:/usr/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/Cellar/android-sdk/r12/tools:$PATH


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
export PATH=~/Library/Haskell/bin/:$PATH
export PATH=~/.rvm/bin/:$PATH
alias ghci="ghci -XQuasiQuotes"

export M2=$M2_HOME/bin
export PATH=$M2:$PATH
alias httpserver='python -m SimpleHTTPServer'
alias chrometest="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --user-data-dir=/tmp/chrometest2 --incognito --disable-web-security --disable-popup-blocking&"
alias chrome="open -a Google\ Chrome"
alias hours="javaws https://hours.reaktor.fi/download/app/Hours.jnlp"
alias editrc="vim ~/.zshrc&&source ~/.zshrc"
export REBEL_HOME=~/Dropbox/Tools/jrebel
export PATH=/usr/local/share/npm/bin:$PATH
unsetopt correct_all

# JPD stuffs
export ANT_HOME=~/reaktor/elisa/jpd/devel/common/ant
export ANT_OPTS='-ea -Xmx1024m -XX:MaxPermSize=256m'
alias ia='ant -Dproject.qualifier=-SNAPSHOT'
export PATH=$PATH:$ANT_HOME/bin
alias eunetlocal="eunet;ia;eunetremove;ln -s $HOME/.ivy2/local-snapshot/jpd/eunet $HOME/.m2/repository/jpd"
alias eunetremove="rm -rf $HOME/.m2/repository/jpd/eunet"
