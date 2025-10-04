# brew autocompletion. more at https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# prevent dir competion errors
# https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
ZSH_DISABLE_COMPFIX=true
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker docker-compose fzf zsh-nvm)
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

switch() {
  # Remove both PostgreSQL versions from PATH first
  export PATH=$(echo $PATH | sed -e 's|/opt/homebrew/opt/postgresql@15/bin:||g' -e 's|/opt/homebrew/opt/postgresql@16/bin:||g')

  if brew services list | grep -q "postgresql@15.*started"; then
    echo "Switching from PostgreSQL@15 → PostgreSQL@16"
    brew services stop postgresql@15
    brew services start postgresql@16
    export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
    echo "PostgreSQL@16 is now active and in PATH"
  elif brew services list | grep -q "postgresql@16.*started"; then
    echo "Switching from PostgreSQL@16 → PostgreSQL@15"
    brew services stop postgresql@16
    brew services start postgresql@15
    export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
    echo "PostgreSQL@15 is now active and in PATH"
  else
    echo "Neither PostgreSQL@15 nor PostgreSQL@16 is running."
    echo "Starting PostgreSQL@15 by default..."
    brew services start postgresql@15
    export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
    echo "PostgreSQL@15 is now active and in PATH"
  fi
}

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
alias ghv="gh pr view --web"
alias gcs="git checkout staging"
alias gclean="git reset --hard && git clean -df"

# rails
alias mg="rails db:migrate && RAILS_ENV=test rails db:migrate"
alias mgb="rails db:rollback && RAILS_ENV=test rails db:rollback"
alias brf="bin/rspec --only-failures"
alias rp="bin/rails parallel:spec"

# tmux
alias mux="tmuxinator"
alias tn="tmux new-session -s"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias tl="tmux ls"
alias l="gls -la --group-directories-first --color='auto'"
alias lg='lazygit'
alias fork="open -a 'Fork' ."
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias kub=kubectl exec -it deployment/web -- rails c
alias windsurf="/Applications/Windsurf.app/Contents/MacOS/Electron"

# misc
# alias ng="./ngrok http 3000"
bindkey -s '^G' ' | grep '
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export AWS_PROFILE=default
