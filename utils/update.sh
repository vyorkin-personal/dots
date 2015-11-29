# update App Store apps
sudo softwareupdate -i -a

# update Homebrew (Cask) & packages
brew update
brew upgrade

# update npm & packages
npm install npm -g
npm update -g

# update Ruby & gems
gem update —-system
gem update
