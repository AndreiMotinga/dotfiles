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

plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker docker-compose bundler fzf fd)
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

git-replace() {
  git grep -l "$1" | xargs sed -i '' -e "s/$1/$2/g"
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# # easier navigation
setopt auto_cd
cdpath=($HOME/dev;$HOME/dev/**)

# vim
alias v="nvim"
alias vd="cd ~/dev/dotfiles"
alias vv="cd ~/.config/nvim"
alias vz="v ~/dev/dotfiles/.zshrc"
alias vt="v ~/dev/dotfiles/todo"

# zsh
alias c="clear"
alias \$=""
alias path='echo $PATH | tr -s ":" "\n"'
alias pcat='pygmentize -f terminal256 -O style=native -g'

# git
alias ghb="gh browse"
alias gcs="git checkout staging"
alias gclean="git reset --hard && git clean -df"

# rails
alias mg="rails db:migrate && RAILS_ENV=test rails db:migrate"
alias mgb="rails db:rollback && RAILS_ENV=test rails db:rollback"
alias brf="bin/rspec --only-failures"

# tmux
alias tn="tmux new-session -s"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias tl="tmux ls"

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

export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
