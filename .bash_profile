#!/usr/bin/env bash

# Load system level bash config file.
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Path to the bash it configuration
export BASH_IT="/Users/thejimbirch/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source $BASH_IT/bash_it.sh

# Git
alias git=hub
alias gb='git branch'
alias gf='git fetch'
alias gr='git fetch origin && git reset --hard origin/master'
alias gs='git status'
alias gcom='git checkout master'
alias gmom='git merge origin/master'
alias gpom='git push origin master'

alias gil='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Programs
alias sublime='open -a "Sublime Text"'

# Helpers
alias bashprofile='subl ~/.bash_profile'
alias sourcebashprofile='source ~/.bash_profile'
alias sites='cd ~/Sites'
alias sshconfig='subl ~/.ssh/config'
alias optimize='imageoptim -a -q -d'

# Homebrew recommended PATH
export PATH="/usr/local/sbin:$PATH"

# Composer recommended PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# WP-CLI
source /usr/local/bin/wp-completion.bash

# Drupal Coding Standards
alias drupalcs="phpcs --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"
alias drupalcsp="phpcs --standard=DrupalPractice --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"
alias drupalcbf="phpcbf --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

# WordPress Coding Standards
alias wpcs="phpcs --standard=Wordpress"
alias wpcbf="phpcbf --standard=Wordpress"

# WebPageTest
alias wpt='webpagetest -k ADDKEYHERE test'

# Achecker WCAG test
alias wcagtest='wcag --id=ADDKEYHERE --guide=WCAG2-AA'

# PHP Helpers
alias php56='brew unlink php70 && brew install php56'
alias php7='brew unlink php56 && brew install php70'
