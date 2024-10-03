Apps

- Rectangle
- Alfred
- Iterm2
- Xcode

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # brew
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # oh-my-zsh
chsh -s /bin/zsh # change default sh to zsh

brew install git
# setup github ssh keys
#    https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

cd ~ && mkdir ~/dev && cd ~/dev && git clone git@github.com:AndreiMotinga/dotfiles.git && cd ~
ln -s ~/dev/dotfiles/.gitconfig .
ln -s ~/dev/dotfiles/.irbrc .
ln -s ~/dev/dotfiles/.pryrc .
ln -s ~/dev/dotfiles/.tmux.conf .
ln -s ~/dev/dotfiles/.zshenv .
ln -s ~/dev/dotfiles/.zshrc .

brew install fzf
brew install rbenv
brew install node
brew install lazygit
  brew install git-delta
brew install nvm
nvm install stable
brew install tmux
brew install gh
brew install postgres
brew install redis
brew tap heroku/brew && brew install heroku
brew install neovim
brew install ripgrep # for telescope
brew install fd      # for telescope, zfz
git clone git@github.com:AndreiMotinga/nvim.git ~/.config/nvim

```

Iterm2

    * Settings -> General -> Selection
        * v Applications in terminal may access clipboard
    * Settings → Profiles → Text -> Nerd font

NOTES:

##### lazygit split diff

looks like for now it's not portable, so you might need to
-> https://github.com/jesseduffield/lazygit/issues/155#issuecomment-2260986940
