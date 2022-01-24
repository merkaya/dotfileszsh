# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export PATH=/opt/homebrew/bin:$PATH
export ZSH="/Users/mertcan/.oh-my-zsh"
export DEFAULT_USER="mertcan"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git macos)

source $ZSH/oh-my-zsh.sh

alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias o="open ."
alias saveallhopper="scp -r hopper:~/ ~/hopper/"
alias "sshh"="ssh hopper"

alias ll="ls -la -G"
alias g="git"
alias gp="git pull"
alias gundo="git reset --soft HEAD~"
alias gamend="git commit -av --amend --no-edit"
alias zshconfig="code ~/.zshrc"
alias install="brew install"
alias uninstall="brew uninstall"

alias c='pygmentize -O style=monokai -f console256 -g'

# FUNCTIONS

function hl (){
    highlight -O rtf "$1" | pbcopy
    echo "code is copied to clipboard"
}

# Create a new directory and enter it
function md() {
	mkdir -p "$@" && cd "$@"
}

# Go to the root of the current git project, or just go one folder up
function up() {
  export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
  if [ -z $git_dir ]
  then
    cd ..
  else
    cd $git_dir
  fi
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
