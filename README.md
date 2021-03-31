  * Iterm2
  * Spectacle
  * Alfred (change system preferances for keyboard/toucpad/screens etc)
  * Fork (enable command line tools)
  * Xcode
  * Setup git / github


    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # brew
    brew install zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # oh-my-zsh
    brew install rbenv
    brew install neovim
    brew install tmux

    brew install the_silver_searcher # to make grep work

    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

    cd ~ && mkdir ~/dev && cd ~/dev && git clone git@github.com:AndreiMotinga/dotfiles.git && cd ~
    ln -s ~/dev/dotfiles/.ctags .
    ln -s ~/dev/dotfiles/.gemrc .
    ln -s ~/dev/dotfiles/.gitconfig .
    ln -s ~/dev/dotfiles/.gitignore .
    ln -s ~/dev/dotfiles/.gitignore_global .
    ln -s ~/dev/dotfiles/.irbrc .
    ln -s ~/dev/dotfiles/.pryrc .
    ln -s ~/dev/dotfiles/.railsrc .
    ln -s ~/dev/dotfiles/.rspec .
    ln -s ~/dev/dotfiles/.tmux.conf .
    ln -s ~/dev/dotfiles/.zshenv .
    ln -s ~/dev/dotfiles/.zshrc .
    ln -s ~/dev/dotfiles/init.vim .
