Apps
  * Spectacle
  * Alfred (change system preferances for keyboard/toucpad/screens etc)
  * Fork (enable command line tools)
  * Iterm2
  * Xcode
  * Git / Github


```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # brew
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # oh-my-zsh
brew install rbenv
brew install neovim
npm install -g livedown # to run markdown preview
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim # to install vim-plug
mkdir ~/.config/nvim && ln -s ~/dev/dotfiles/init.vim ~/.config/nvim/init.vim
brew install tmux
brew install node
npm install -g neovim # for neovim node
brew install hub
brew install the_silver_searcher # to make grep work
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
brew install postgres
brew services start postgresql # to start postgres on login
brew install redis
brew services start redis # to start redis on login

brew tap elastic/tap
brew install elastic/tap/elasticsearch-full
brew services start elastic/tap/elasticsearch-full # to start on login

cd ~ && mkdir ~/dev && cd ~/dev && git clone git@github.com:AndreiMotinga/dotfiles.git && cd ~
ln -s ~/dev/dotfiles/.ctags .
ln -s ~/dev/dotfiles/.gemrc .
ln -s ~/dev/dotfiles/.gitconfig .
ln -s ~/dev/dotfiles/.irbrc .
ln -s ~/dev/dotfiles/.pryrc .
ln -s ~/dev/dotfiles/.railsrc .
ln -s ~/dev/dotfiles/.rspec .
ln -s ~/dev/dotfiles/.tmux.conf .
ln -s ~/dev/dotfiles/.zshenv .
ln -s ~/dev/dotfiles/.zshrc .

chsh -s /bin/zsh # change default sh to zsh
brew tap heroku/brew && brew install heroku

```

Iterm2

    * Preferences -> General -> Selection
      * v Copy to pasteboard on selection
      * v Applications in terminal may access clipboard

Fork

    * Preferences -> Integration -> Install command line tools
