#!/bin/sh

brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "Homebrew is installed, nothing to do here"
else
  echo "Homebrew is not installed, installing now"
  echo "This may take a while"
  echo "Homebrew requires osx command lines tools, please download xcode first"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

packages=(
"git"
"python"
"python3"
"node"
"tmux"
"neovim"
"kwm"
"khd"
"vifm"
"zsh"
)

for i in "${packages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done

echo "installing dotfiles"
pip install dotfiles
echo "---------------------------------------------------------"

localGit="/usr/local/bin/git"
if [ -f "$localGit" ]
then
  echo "git is all good"
else
  echo "git is not installed"
fi
# Okay so everything should be good
# Fingers cross at least
# Now lets clone my dotfiles repo into .dotfiles/
echo "---------------------------------------------------------"

echo "Cloning dotfiles into .dotfiles"
git clone https://github.com/skesh/dotfiles.git ~/.dotfiles

cd .dotfiles
git submodule update --init --recursive

cd $HOME
echo "running dotfiles command"
echo "This is symlink the rc files in .dofiles"
echo "with the rc files in $HOME"
echo "---------------------------------------------------------"

ln -s ~/.dotfiles/dotfilesrc ~/.dotfilesrc
dotfiles -s

echo "---------------------------------------------------------"

#echo "Changing to zsh"
#chsh -s $(which zsh)

#echo "You'll need to log out for this to take effect"
#echo "---------------------------------------------------------"

#echo "running oxs defaults"
#~./osx.sh

exit 0
