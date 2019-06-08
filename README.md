# Mac configuration

I've reformatted, configured and installed programmes too many times and it's now a complete pain in the ass. I've based my configuration file on the excellent macos github repo by [Mitchell Cass](https://github.com/mathiasbynens/dotfiles/blob/master/.macos), so I can't take any credit for this. I've simplified it and stripped out the configuration I don't use. 

I've listed the software I like to install in the BREWPACKAGES and CASKPACKAGES. However, it's likely you'll want to customise these to suit your needs.

> I hope these scripts are useful and save you a lot of time and effort!


### Modification & Improvements

Feel free to download the code and edit/customise it for your needs. I'm by no means an expert in Shell, so please create a PR if you spot any bloopers or you'd like to suggest improvements.


### Installation order

I recommend you run the files in the following order: 

  - config-mac-system
  - config-mac-homebrew

### Installation method

The scripts assume a clean Mac O/S (I'm using Mojave 10.14.5) and will configure the system and download all dependencies

##### Clone, save & store

Clone the repo and create a file for the system & homebrew files on your machine e.g. store them on your Desktop.  

cd into the Desktop

```sh
$ cd ~/Desktop
```

Create a file (I prefer using Vim), copy & paste the code in here. 
Repeat for each file. 

```sh
$ vim config-mac-system.sh
$ vim config-mac-homebrew.sh
```

##### Executable

Make each file executable e.g.

```sh
$ chmod a+x config-mac-system.sh
$ chmod a+x config-mac-homebrew.sh
```

# Updating software

After running config-mac-homebrew.sh you can update the software (packages) running on your Mac:

```sh
$ brew upgrade
$ brew cask upgrade
```
----

# Disclaimer

**USE AT YOUR OWN RISK!!!**



# License

MIT


**Free Software, Hell Yeah!**

