# brew autocompletion. more at https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# add rbenv to path
export PATH="$HOME/.rbenv/bin:$PATH"

# prevent dir competion errors
# https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
ZSH_DISABLE_COMPFIX=true
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker docker-compose)
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# easier navigation
setopt auto_cd
cdpath=($HOME/dev;$HOME/dev/ezworks)

# vim
alias v="nvim"
alias vd="cd ~/dev/dotfiles"
alias vz="nvim ~/dev/dotfiles/.zshrc"
alias vt="nvim ~/dev/dotfiles/.tmux.conf"

# zsh
alias c="clear"
alias \$=""
alias path='echo $PATH | tr -s ":" "\n"'
alias pcat='pygmentize -f terminal256 -O style=native -g'

# git
alias hb="hub browse"
alias gcob="git checkout -b"
alias gcs="git checkout staging"

# rails
alias mg="rails db:migrate && RAILS_ENV=test rails db:migrate"
alias mgb="rails db:rollback && RAILS_ENV=test rails db:rollback"
alias b="bundle"
alias brf="bin/rspec --only-failures"
alias be="bundle exec"
alias bo="bundle open"
alias bu="bundle update"
alias ba="bundle add"

# tmux
alias tn="tmux new-session -s"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias ts="tmux switch -t"
alias tl="tmux ls"

# docker
alias dc="docker-compose"
alias dsr="docker-compose exec auth env RAILS_ENV=test rspec"

# misc
# alias ng="./ngrok http 3000"
bindkey -s '^G' ' | grep '
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(rbenv init -)"

export AWS_PROFILE=default

# node version manager generated config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# installing pg gem mac
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

# installing mysql gem mac
export LDFLAGS="-L/opt/homebrew/opt/mysql@5.7/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@5.7/lib/pkgconfig"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
