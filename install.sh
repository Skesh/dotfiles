#!/bin/sh

brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "Homebrew is installed, nothing to do here"
else
  echo "Installing xcode-select & Homebrew"
  xcode-select --install
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew_packages=(
  "node"
  "neovim"
  "vifm"
  "git"
  "git-flow"
  "exa"
  "imgcat" # for view images in vifm
  "git"
  "git-flow"
  "rcm"
)

pip_packages=(
	"neovim"
)

cask_apps(
  '1password'
  'alfred'
  'dash' # upgrade?
  'docker'
  'google-chrome'
  'iina'
  'iterm2'
  'karabiner-elements'
  'little-snitch'
  'mongodb-compass'
  'paw'
  'skype'
  'sublime-merge'
  'veracrypt'
  'visual-studio-code'
  'webstorm'
  'contexts'
  'sip'
  'transmission'
  'appcleaner'
  'brave-browser'
)

mas_apps=(
  '747648890'   # Telegram
  '1438243180'  # Dark Reader for Safari
  '1449412482'  # Reeder
  '1176895641'  # Spark
  '803453959'   # Slack
  '1480933944'  # Vimari
  '1320666476'  # Wirp
  '409203825'   # Numbers
  '409201541'   # Pages
)

echo "Installing Brew packages:"
for pkg in "${brew_packages[@]}"; do
  brew install $pkg
done

echo "Installing Python packages:"
for pkg in "${pip_packages[@]}"; do
	pip install $pkg --user
done

echo "Installing None Store Apps:"
for app in "${cask_apps[@]}"; do
	brew cask install $app
done

echo "Installing Store Apps:"
for app in "${mas_apps[@]}"; do
	mas install $app
done

