#!/usr/bin/env bash

# Load system level bash config file.
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Path to the bash it configuration
export BASH_IT="/Users/jim/.bash_it"

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
alias github='open https://github.com/thejimbirch?tab=repositories'
alias githubkanopi='open https://github.com/kanopi'
alias git=hub
alias hb='hub browse'
alias gd='git diff'
alias gc='git commit'
alias gb='git branch'
alias gf='git fetch'
alias gr='git fetch origin && git reset --hard origin/master'
alias g='git status'
alias ga='git add'
alias g='git status'
alias gs='git status'
alias gco='git checkout'
alias gcom='git checkout master'
alias gmom='git merge origin/master'
alias gpo='git push origin'
alias gpom='git push origin master'

alias gil='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Open git diff in sublime
gds() {
    if [ $# -eq 0 ]
        then
            git diff | subl
        else
            git diff $@ | subl
    fi
}

# Drupal patch.
drupalpatch() {
    curl "$1" -N | git apply -v
}

alias dp="drupalpatch"

# Composer
alias ccc='composer clear-cache'

# Docksal
alias fd='fin drush'
alias fg='fin gulp'
alias doit='fin gulp sass && fin drush cr'
alias newstgdb="fin exec 'rm /tmp/site.stg.sql' && fin refresh stg"
alias addkey='fin ssh-add kanopi_jim'
alias addkeyacquia='fin ssh-add kanopi_jim_acquia'

# Programs
alias sublime='open -a "Sublime Text"'

# Helpers
alias bashprofile='subl ~/.bash_profile'
alias sourcebashprofile='source ~/.bash_profile'
alias s='cd ~/Projects'
alias sites='cd ~/Projects'
alias projects='cd ~/Projects'
alias sshconfig='subl ~/.ssh/config'
alias o=open
alias optimize='imageoptim -a'
alias copy="tr -d '\n' | pbcopy"
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]" | copy'

# Homebrew recommended PATH
export PATH="/usr/local/sbin:$PATH"

# Composer recommended PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# WP-CLI
source /usr/local/bin/wp-completion.bash

# Drupal Coding Standards
alias drupalcs="phpcs --standard='Drupal,DrupalPractice' --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"
alias drupalcsp="phpcs --standard='Drupal,DrupalPractice' --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"
alias drupalcbf="phpcbf --standard='Drupal,DrupalPractice' --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

# WordPress Coding Standards
alias wpcs="phpcs --standard=Wordpress"
alias wpcbf="phpcbf --standard=Wordpress"

# WebPageTest
alias wpt='webpagetest -k A.fd1e83c2f93186354b387d2f4759bf68 test'

# Achecker WCAG test
alias wcagtest='wcag --id=4f45b8ec9d5560fe8c0e11c9ae1106bf62523864 --guide=WCAG2-AA'

# PHP Helpers
alias php56='brew unlink php70 && brew install php56'
alias php7='brew unlink php56 && brew install php70'

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

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
