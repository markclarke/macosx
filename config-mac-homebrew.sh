#!/usr/bin/env bash

# Clear the screen when the code starts

clear

# Set elapsed time counter to zero 

SECONDS=0

###############################################################################
# Homebrew                                                                    #
###############################################################################

# Check if Homebrew is installed, if we don't have it - install it, if we do have it - update it

homebrew() {
	
	if [[ $(command -v brew) == "" ]]; then 
		
		echo ""
		echo "Installing Xcode ... "
		echo ""

		xcode-select --install

		echo ""
		echo "Installing Homebrew ... "
		echo ""

		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	else

		echo ""
		echo "Updating Homebrew ... "
		echo ""

		brew update
        
	fi
}


# Run homebrew function 

homebrew

# Install Cask

brew tap caskroom/cask


###############################################################################
# Install brew packages                                                       #
###############################################################################

echo ""
echo "Checking brew packages ... "
echo ""

# List the brew packages you want to install 

BREWPACKAGES=(
    ansible
    awscli
    azure-cli
    bash-completion
    curl
    emacs
    gdbm
    gettext
    git
    gmp
    gnutls
    htop
    libevent
    libffi
    libidn2
    libtasn1
    libunistring
    libyaml
    ncurses
    nettle
    nmap
    openssl
    p11-kit
    packer
    pcre
    pcre2
    pkg-config
    putty
    python
    readline
    sqlite
    terraform
    unbound
    vim
    wget
    zsh
)

# Rotate through the packages, if installed - skip, otherwise install

for package in "${BREWPACKAGES[@]}"; do

    if brew list $package; then 

        echo "$package is already installed. Skipping ..."

    else 

        echo ""
        echo "Installing ..."
        echo ""
    
        brew install "$package"

    fi

done 



###############################################################################
# Install cask packages                                                       #
###############################################################################

echo ""
echo "Checking cask packages ... "
echo ""

BREWCASKPACKAGES=(
    adobe-creative-cloud
    docker
    dropbox
    firefox
    google-chrome
    iterm2
    lastpass
    microsoft-office
    skype
    teamviewer
    visual-studio-code
    whatsapp
)

# Rotate through the casks, if installed - skip, otherwise install

for caskpackage in "${BREWCASKPACKAGES[@]}"; do

    if brew cask list $caskpackage; then 

        echo "$caskpackage is already installed. Skipping ..."

    else 

        echo ""
        echo "Installing ..."
        echo ""
    
        brew cask install "$caskpackage"

    fi

done 


###############################################################################
# Update brew packages                                                        #
###############################################################################

echo ""
echo "Updating brew packages ... "

brew upgrade

###############################################################################
# Update cask packages                                                        #
###############################################################################

echo ""
echo "Updating cask packages ... "
echo ""

brew cask upgrade

# -------- Finish -------- #

echo ""
echo "Packages installed & updated in $(printf '%02dh:%02dm:%02ds\n' $(($SECONDS/3600)) $(($SECONDS%3600/60)) $(($SECONDS%60)))"
echo ""