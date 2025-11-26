# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/doortts/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ga='git add'
alias gb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(color:yellow)%(HEAD)%(color:reset) %(refname:short) |%(color:red)%(objectname:short)%(color:reset) - %(contents:subject) (%(color:green)%(committerdate:relative)%(color:reset))%(color:blue) <%(authorname)>%(color:reset)' --color=always | column -ts'|'"
alias god='cd /Users/doortts/Dropbox'
alias gl="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs="git status"
alias gc="git commit"
alias gca="git commit --amend"
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gm="git commit -a -m"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gra="git rebase --abort"
alias gsp="git stash pop"
alias act="/Users/doortts/apps/activator-1.2.10-minimal/activator"

alias d='docker'
alias ds='docker ps'

alias ll='ls -lha'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Auto suggest
export ZSH_AUTOSUGGEST_STRATEGY=(
    history
    completion
)

bindkey '^b'   backward-word        
bindkey '^f'   forward-word 

# kubernates
alias k='kubectl'
alias kg='kubectl get'
alias kf='kubectl port-forward'
alias kc='kubectl config'

kn() {
	kubectl config set-context --current --namespace=$1
}

kl(){
	target=$(kg po | grep $1 | cut -f1 -d" ")
	echo $target
	kubectl logs $target --follow | grep -Ev '$2'
}

export KUBECONFIG=~/.kube/kubeconfig.yaml

# kubectl completion
source <(kubectl completion zsh)
compdef __start_kubectl k

# alias
alias sl='subl'
alias f='flutter'

# gh cli
export GH_PAGER='diff-highlight | less -X -F'

# flutter
export PATH="/Users/doortts/Library/Android/sdk/tools/bin:/Users/doortts/repos/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/repos/flutter/.pub-cache/bin"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"


# Go private
export GOPRIVATE=$GITHUB_ENT_URL

# Android
export PATH="/Users/doortts/Library/Android/sdk/platform-tools:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

#ruby
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Flutter Pub install
export PATH="$PATH":"$HOME/.pub-cache/bin"

# npm global bin
export PATH="$PATH":"$HOME/.npm/bin"

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

#gh
alias gv='gh issue view --web'
export PATH="/opt/homebrew/opt/mariadb@10.3/bin:$PATH"
export PATH="/opt/homebrew/opt/mariadb@10.3/bin:$PATH"

#minikube
export PATH="/opt/homebrew/Cellar/minikube/1.28.0/bin":$PATH
