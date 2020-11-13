ZSH_THEME="agnoster"

plugins=(
  git 
  docker docker-compose
  zsh-syntax-highlighting 
  zsh-autosuggestions 
  zsh-completions
  z 
)

# zsh-completions
autoload -U compinit && compinit