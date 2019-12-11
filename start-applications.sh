clear

# Set elapsed time counter to zero

SECONDS=0

# Launch websites
echo ""
echo "Launching Chrome, FireFox, Slack, Visual Studio Code ... "
open -a "Google Chrome.app"
open -a "Firefox.app"

# Launch Applications
open -a "Slack.app"
open -a "Visual Studio Code.app"

# Upgrade applications
brew upgrade
brew cask upgrade


echo ""
echo "Starup tasks finished in $(printf '%02dm:%02ds\n' $(($SECONDS%3600/60)) $(($SECONDS%60)))"
echo ""