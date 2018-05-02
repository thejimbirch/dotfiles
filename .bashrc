# Include Drush bash customizations.
if [ -f "/Users/thejimbirch/.drush/drush.bashrc" ] ; then
  source /Users/thejimbirch/.drush/drush.bashrc
fi

# Include Drush completion.
if [ -f "/Users/thejimbirch/.drush/drush.complete.sh" ] ; then
  source /Users/thejimbirch/.drush/drush.complete.sh
fi

# Include Drush prompt customizations.
if [ -f "/Users/thejimbirch/.drush/drush.prompt.sh" ] ; then
  source /Users/thejimbirch/.drush/drush.prompt.sh
fi

export PATH=$PATH:$HOME/.composer/vendor/bin/
export CGR_BIN_DIR=$HOME/.composer/vendor/bin
