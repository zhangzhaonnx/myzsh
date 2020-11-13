# mvn
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# jenv
export PATH="/Users/zhaozhang/.jenv/bin:${PATH}"
eval export PATH="/Users/zhaozhang/.jenv/shims:${PATH}"
export JENV_SHELL=zsh
export JENV_LOADED=1
unset JAVA_HOME
source '/usr/local/Cellar/jenv/0.5.2/libexec/libexec/../completions/jenv.zsh'
jenv rehash 2>/dev/null
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zhaozhang/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zhaozhang/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/zhaozhang/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zhaozhang/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Setting PATH for android-sdk
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export PATH="${PATH}:${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/platform-tools"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"