export ZSH="$HOME/.oh-my-zsh"
export AzureCLIPath="/opt/homebrew/bin"
export GOPATH="$HOME/go"
export TERM="xterm-256color"
export COLORTERM="truecolor"
export NVM_DIR="$HOME/.nvm"

# This loads nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Configure zsh-autosuggestions
bindkey '^O' autosuggest-accept
bindkey '^P' up-line-or-search

# export HISTFILE="$HOME/.hzsh"
export HISTFILE="$HOME/.zsh_history"
export HISTFILESIZE=50000
export HISTSIZE=50000
export SAVEHIST=50000

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

export EDITOR='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit bashcompinit
compinit
bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# bun completions
[ -s "/Users/asleb/.bun/_bun" ] && source "/Users/asleb/.bun/_bun"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Auth suggestion for zsh https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

# Aliases
alias dc='docker compose'
alias dcdown='docker compose down'
alias dcup='docker compose up -d'
alias lg="lazygit"
alias bunx="bun x"
alias ld="lazydocker"
alias tmux='tmux -u' # Fixes encoding issue
alias vim='nvim'
alias vi='nvim'
alias gs="git status"
alias gb="git branch -a --sort=-committerdate"
alias gwa="git worktree add"
alias gwr="git worktree remove"
alias gco="git checkout"
alias gcb="git checkout -b"
alias cheat="curl cheat.sh"
alias cat="bat --plain"
alias ls="eza -l -a --header --git --group-directories-first"
alias cy="./node_modules/.bin/cypress run" # must have node_modueles and cypress installed
alias swagger='docker run --rm -it  --user $(id -u):$(id -g) -e GOPATH=$(go env GOPATH):/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger'
alias dr="dotnet run"
alias prd="pnpm run dev"
alias nrs="npm run start"
alias nrd="npm run dev"
alias brd="bun run dev"
alias killfrontend="kill $(lsof -t -i:3000)"
alias df="duf"
alias disk="duf"
alias findbranch="git branch --sort=-committerdate | fzf | xargs git checkout"
alias fb="findbranch"
alias myip="echo $(curl -fs api.ipify.org)"
alias pomodoro="timer 25m && terminal-notifier -title 'Pomodoro!' -message 'Time is up! Time for a break' -contentImage https://ih2.redbubble.net/image.269089358.2349/st,small,507x507-pad,600x600,f8f8f8.u3.jpg -title 'Work timer is up' -sound Crystal"
alias pomodorobreak="timer 5m && terminal-notifier -message 'Pomodoro'\
-title 'Break is over!' -sound Crystal"
alias h='eval $(history 1 | fzf --tac | sed "s/ *[0-9]* *//")' ## to execute command, use !h
alias newcommit="curl -s https://whatthecommit.com/index.txt | xargs -I {} git commit -m {}"
alias akvarium="asciiquarium"
alias dino='curl http://asciiart.artillery.io:8080/dino'
alias matrix="cmatrix"
alias parrot="curl parrot.live"
alias weather="curl -s 'wttr.in/{Sandnes,Vigeland,Sirdal}?lang=nb&M&format=%l:+%c+%t+%w+%p+%h+uv:%u\n'"
alias weather2="curl -s 'no.wttr.in/{Sandnes,Vigeland,Sirdal}?M'"
alias weather_json="curl -sf 'wttr.in/{Sandnes,Vigeland,Sirdal}?format=j1'"
