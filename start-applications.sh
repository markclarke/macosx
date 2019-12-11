clear

# Set elapsed time counter to zero

SECONDS=0

# Launch websites
echo ""
echo "Launching Chrome ... "
open -a "Google Chrome.app"

echo "Launching Firefox ... "
open -a "Firefox.app"

# Launch Applications
echo "Launching Slack ... "
open -a "Slack.app"

echo "Launching VS Code ... "
open -a "Visual Studio Code.app"

# Upgrade applications
echo ""
echo "Updating brew packages ... "
brew upgrade

echo "Updating brew casks ... "
brew cask upgrade


echo ""
echo "Starup tasks finished in $(printf '%02dh:%02dm:%02ds\n' $(($SECONDS/3600)) $(($SECONDS%3600/60)) $(($SECONDS%60)))"
echo ""