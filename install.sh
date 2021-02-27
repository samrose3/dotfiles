# Ask for password upfront
sudo -v

# Homebrew
read -p "
Do you want to install command line and GUI apps with Homebrew?
[y/N]: " -r Install_Apps
Install_Apps=${Install_Apps:-n}
if [[ "$Install_Apps" =~ ^(y|Y)$ ]]; then
  echo "\033[1m\033[34m==> Installing brew\033[0m"
  if [[ $(which brew) == "/usr/local/bin/brew" ]]
  then
      echo "Brew installed already, skipping"
  else
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  echo "\033[1m\033[34m==> Installing brew formulas\033[0m"
  brew bundle --file=~/.config/Brewfile
fi

# git
echo "\033[1m\033[34m==> Linking git configs\033[0m"
ln -sf ~/.config/git/gitconfig.user ~/.gitconfig.user
ln -sf ~/.config/git/gitconfig ~/.gitconfig
ln -sf ~/.config/git/gitignore ~/.gitignore
ln -sf ~/.config/git/gitmessage ~/.gitmessage

# zsh
echo "\033[1m\033[34m==> Linking zsh configs\033[0m"
ln -sf ~/.config/zsh/zshrc.zsh ~/.zshrc

# Oh My Zsh
if [[ -d ~/.oh-my-zsh ]]
then
    echo "Oh My Zsh installed already, skipping"
else
    echo "\033[1m\033[34m==> Installing Oh My Zsh\033[0m"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
