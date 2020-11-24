alias c='clear'

# ls
alias ls='ls -G'
alias ll='ls -lFG'
alias l.='ls -lFG -d .*'

# cd
alias cd..='cd ..'
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias bc='bc -l'
alias sha1='openssl sha1'
alias mkdir='mkdir -pv'
alias md='mkdir -pv'
alias diff='colordiff'
alias mount='mount |column -t'
alias h='history | less +G'
alias jobs='jobs -l'
alias ping='ping -c 5'
alias vi='vim'

alias k9='kill-9'
alias ipe='curl ipinfo.io/ip'
alias ipi='ipconfig getifaddr en0'
alias k=kubectl
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace'
alias local.parallel='ssh parallels@10.211.55.3'
