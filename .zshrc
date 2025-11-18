if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

alias k=kubectl
alias kx="kubectl config use-context"
alias kn="kubectl config set-context --current"
source <(kubectl completion zsh)

alias g=git
alias f=flux
alias alias linosl="ssh -l mrygstad bf-bastno-lin11.osl.basefarm.net"

alias tf=terraform

eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

export PATH="/Users/mattistrygstad/Library/Python/3.9/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"
