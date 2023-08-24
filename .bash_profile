export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(git_branch)$"
alias ls='ls -GFh'

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
#export PATH="/usr/local/opt/openjdk/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xsun/.sdkman"
[[ -s "/Users/xsun/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xsun/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME="/Users/xsun/.sdkman/candidates/java/11.0.12-zulu/zulu-11.jdk/Contents/Home"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
export PATH="/usr/local/opt/libpq/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
