function cd_then_code() {
  local dir=${1:-.}
  cd "$dir" && code "$dir"
}

alias codezsh='cd_then_code ~/.oh-my-zsh/custom/'
alias cdzsh='cd ~/.oh-my-zsh/custom/'
alias artofcommandline='open https://github.com/jlevy/the-art-of-command-line'
