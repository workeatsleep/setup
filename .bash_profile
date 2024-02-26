export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(git_branch)$"
alias ls='ls -GFh'

export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
source /opt/homebrew/Cellar/fzf/0.42.0/shell/key-bindings.bash
source /opt/homebrew/Cellar/fzf/0.42.0/shell/completion.bash

#do this first curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  fi
alias python=python3 

eval "$(NEWT_OFFLINE=1 NEWT_QUIET=1 newt --app-type cinder-cli init -)"
