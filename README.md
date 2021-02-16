# Arch
Arch Everywhere !!!

### Useful Links

* [Arch Installation on Encrypted Drive ](https://github.com/rickellis/Arch-Linux-Install-Guide)
* [Bash Cheat Sheet](https://github.com/rickellis/Bash-Cheatsheet)
* [This Guy's Script for Arch Installation is Golden](https://github.com/rickellis/ArchMatic)


### Setting up a new workspace

- Install zsh and make it default shell - [Refer this in case of any discrepancies](https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/)
- Install iterm2
- Set Monaco or [Monego](https://github.com/cseelus/monego) font and download iterm-colors files of wez theme or hyper theme
- Install [zprezto](https://github.com/sorin-ionescu/prezto)
- Edit .zpreztorc and to have this config
```
# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'syntax-highlighting' \
  'history-substring-search' \
  'autosuggestions' \
  'git' \
  'prompt'
```
- After doing the configurations install nvm - https://github.com/creationix/nvm#installation 
- Install the required node version after ```nvm use``` in the required installation directory
- Install RVM using ```curl -sSL https://get.rvm.io | bash -s stable``` Note: Mac has its own Ruby.. 
- Install Ruby with RVM after ```rvm use``` in the working directory
- Install mentioned ruby via ```rvm install "ruby-2.6.3"``` 
- Installing gems using ```bundle install```
- Fix for ```libv8``` or ```therubyracer``` installation error if that happens and continue with bundle install (For MacOS Catalina and beyond)
```fish
gem install libv8 -v '3.16.14.19' -- --with-system-v8
brew install v8-315
gem install therubyracer -v '0.12.3' -- --with-v8-dir=/usr/local/opt/v8@3.15
```
- Fix on Big Sur, when faced with ```thin``` client installation error while bundle install
```
bundle config build.thin --with-cflags="-Wno-error=implicit-function-declaration"
```
- Before ```npm install``` add CM path in client/package.json
- Now the setup would theoretically be done




