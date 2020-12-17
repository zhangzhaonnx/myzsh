# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# mvn
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

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
