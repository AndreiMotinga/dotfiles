Apps
  * Spectacle
  * Alfred (change system preferances for keyboard/toucpad/screens etc)
  * Fork (enable command line tools)
  * Iterm2
  * Xcode

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # brew
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # oh-my-zsh
chsh -s /bin/zsh # change default sh to zsh

brew install git
# setup github ssh keys
#    https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

cd ~ && mkdir ~/dev && cd ~/dev && git clone git@github.com:AndreiMotinga/dotfiles.git && cd ~
ln -s ~/dev/dotfiles/.gemrc .
ln -s ~/dev/dotfiles/.gitconfig .
ln -s ~/dev/dotfiles/.irbrc .
ln -s ~/dev/dotfiles/.pryrc .
ln -s ~/dev/dotfiles/.railsrc .
ln -s ~/dev/dotfiles/.tmux.conf .
ln -s ~/dev/dotfiles/.zshenv .
ln -s ~/dev/dotfiles/.zshrc .

brew install rbenv
brew install nvm
nvm install stable
brew install tmux
brew install gh
brew install postgres
brew install redis
brew tap heroku/brew && brew install heroku
brew install neovim
brew install ripgrep # for telescope
brew install fd      # for telescope
git clone git@github.com:AndreiMotinga/nvim.git ~/.config/nvim

```

Iterm2

    * Settings -> General -> Selection
      * v Copy to pasteboard on selection
      * v Applications in terminal may access clipboard

Fork

    * Preferences -> Integration -> Install command line tools
