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
alias gl='glol'

alias k9='kill -9'
alias ipe='curl ipinfo.io/ip'
alias ipi='ipconfig getifaddr en0'
alias k=kubectl
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace'
alias local.parallel='ssh parallels@10.211.55.3'
alias sshkg='ssh-keygen -t ed25519 -C "2442647554@qq.com"'
alias gw='./gradlew'
alias jdks='/usr/libexec/java_home -V'

# docker
alias sq.u='docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest'
alias sq.d='docker rm -f sonarqube'
alias nexus.u='docker run -d -p 8081:8081 --name nexus sonatype/nexus:oss'
alias nexus.d='docker rm -f nexus'
alias jenkins.u='docker run -d --name jenkins -u root -p 9090:8080 -p 50000:50000 -v $(which docker):/usr/bin/docker -e TZ="Asia/Shanghai" -v /etc/localtime:/etc/localtime:ro -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts'
alias jenkins.d='docker rm -f jenkins'
alias dind.u='docker run --privileged --name my-docker -d docker:dind'
alias dc='docker-compose'
alias dm='docker-machine'
alias dmc='docker-machine create -d virtualbox'

alias maven.aliyun="echo \"maven { url 'http://maven.aliyun.com/nexus/content/groups/public/' }\" | pbcopy"
