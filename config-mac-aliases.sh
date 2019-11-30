#!/usr/bin/env bash

# Clear the screen when the code starts

clear

# Set elapsed time counter to zero

SECONDS=0

###############################################################################
# Install git                                                                 #
###############################################################################

# Check if git is installed, if we don't have it - install it

check-git() {

    echo ""
    echo "Checking if git installed"

	if [[ $(command -v git) == "" ]]; then

		echo ""
		echo "Git not installed - installing ... "
		echo ""

		brew install git

	else

		echo ""
		echo "Git installed ... "
		echo ""

	fi
}


# Run alaises function

check-git


###############################################################################
# Configure git aliases                                                       #
###############################################################################

# Create permanent git alias, which lists all configured git aliases

git config --global alias.alias "! git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\ =\ /"


###############################################################################
# Essential git aliases (for me)                                              #
###############################################################################


# --- Remember to change these and add your own details!! --- #

git config --global user.name "Mark Clarke"
git config --global user.email mark.clarke@outlook.com
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.cob "checkout -b"
git config --global alias.com "commit -m"
git config --global alias.pushoh "push origin HEAD"
git config --global alias.pushom "push origin master"
git config --list


echo ""
echo "Configuring git aliases ... "
echo ""

# List the git aliases you want to install. If needed, you can change the alias to something that's more obvious & memorable

git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.cob "checkout -b"
git config --global alias.com "commit -m"
git config --global alias.pushoh "push origin HEAD"
git config --global alias.pushom "push origin master"
git config --global alias.st status



###############################################################################
# Configure zsh aliases                                                       #
###############################################################################

# I like using Zsh with iTerm ...

# Check if Zsh is installed, if installed - skip, otherwise install it

echo ""
echo "Checking if Zsh is installed ... "

if brew ls --versions zsh > /dev/null; then

    # Zsh is installed

    echo ""
    echo "Zsh is installed ... "

else

  # Zsh is not installed - install it

    echo ""
    echo "Installing ... "

    brew install zsh

# Install Oh-My-Zsh shell on top of zsh (I like the colours)

    echo ""
    echo "Installing Oh-My-Zsh ... "

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

fi


echo ""
echo "Configuring zsh aliases ... "

# I'm not checking if the alias is already used. If used, it will be overwritten!
# Aliases are appended to the bottom of the .zshrc file by using >>
# Do not use single > as this overwrites the contents of .zshrc!

echo 'alias tf="terraform"' >> ~/.zshrc              # sets tf to terraform
echo 'alias repos="~/Documents/repos"' >> ~/.zshrc   # shortcut to my repos directory (change the path if different)
echo 'alias desk="~/Desktop"' >> ~/.zshrc            # shortcut to my Desktop
echo ""
echo "Restart zsh shell to use the aliases"

# -------- Finish -------- #

echo ""
echo "Packages installed & updated in $(printf '%02dh:%02dm:%02ds\n' $(($SECONDS/3600)) $(($SECONDS%3600/60)) $(($SECONDS%60)))"
echo ""
