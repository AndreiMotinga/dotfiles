export ZSH=/Users/andrei/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git zsh-syntax-highlighting)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=$PATH:"~/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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

# zsh
alias c="clear"
alias path='echo $PATH | tr -s ":" "\n"'

# git
alias hb="hub browse"
alias gcob="git checkout -b"

#heroku
alias hp="git push heroku master"
alias hmg="heroku run rails db:migrate"
alias hr="heroku restart"
alias hlw="heroku logs --dyno web -t"
alias hlj="heroku logs --dyno worker -t"

# rails
alias mg="spring rake db:migrate db:test:prepare"
alias b="bundle"
alias sr="spring rspec"
alias r="spring rails"
alias rr="spring rake routes |grep "
alias rk="spring rake"

# tmux
alias tn="tmux new-session -s"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias ts="tmux switch -t"
alias tl="tmux ls"

# middleman
alias mm="middleman"

# misc
alias ng="./ngrok http 3000"
bindkey -s '^G' ' | grep '
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
