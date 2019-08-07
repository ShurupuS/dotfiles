export ZSH=$HOME/.oh-my-zsh
export PATH=~/dev/flutter/bin:$PATH
ZSH_THEME="agnoster"

DEFAULT_USER=$USER
prompt_context() {}

eval $(thefuck --alias)

alias zshrc="subl ~/.zshrc"
alias be="bundle exec"
alias bepu="bundle exec pod update"
alias bepi="bundle exec pod install"
alias befs="bundle exec fastlane start"
alias bi="bundle install"
alias bu="bundle update"
alias ri="rake install"
alias gc="git checkout"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcp="git commit -a && git push"
alias gpull="git pull"
alias gpush="git push"
alias gbranch="git checkout -b"
alias gclone="git clone"
alias s="subl ."
alias o="open ."
alias uuid="system_profiler SPUSBDataType | grep -A 11 -w \"iPad\|iPhone\|iPad\""

function o() {
  z $1 && open .
}

export LANG=en_US.UTF-8

openx(){ 
  if test -n "$(find . -maxdepth 1 -name '*.xcworkspace' -print -quit)"
  then
    echo "Opening workspace"
    open *.xcworkspace
    return
  else
    if test -n "$(find . -maxdepth 1 -name '*.xcodeproj' -print -quit)"
    then
      echo "Opening project"
      open *.xcodeproj
      return  
    else
      echo "Nothing found"
    fi
  fi
}

function up() {
  export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
  if [ -z $git_dir ]
  then
    cd ..
  else
    cd $git_dir
  fi
}

source $ZSH/oh-my-zsh.sh

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
