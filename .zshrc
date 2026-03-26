# # prevent dir competion errors
# # https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
# ZSH_DISABLE_COMPFIX=true
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
# HYPHEN_INSENSITIVE="true"
#
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

# # easier navigation
setopt auto_cd
cdpath=($HOME/dev;$HOME/dev/**)

# vim
alias c="clear"
alias v="nvim"
alias vd="cd ~/dev/dotfiles"
alias vv="cd ~/.config/nvim"
alias vz="v ~/dev/dotfiles/.zshrc"
alias vt="v ~/dev/dotfiles/todo"

# zsh
alias \$=""
alias path='echo $PATH | tr -s ":" "\n"'
alias pcat='pygmentize -f terminal256 -O style=native -g'

# git
alias ghb="gh browse"
alias ghv="gh pr view --web"
alias gcs="git checkout staging"
alias gclean="git reset --hard && git clean -df"

# rails
# alias mg="rails db:migrate && RAILS_ENV=test rails db:migrate"
# alias mgb="rails db:rollback && RAILS_ENV=test rails db:rollback"
alias mg="rails db:migrate"
alias mgb="rails db:rollback"
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

# misc
# alias ng="./ngrok http 3000"
bindkey -s '^G' ' | grep '
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export AWS_PROFILE=default

alias knowde-shoryuken="bundle exec shoryuken -R -C config/shoryuken.yml -r ./app/workers/consumers -q localstack-queue"
