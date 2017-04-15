
export PATH=~/bootstrapped/bin:$PATH
export CLICOLOR=1

autoload -Uz promptinit
promptinit

PS1='\h:\W \u\$ '

# use zsh-git-prompt
# plus make it work like OSX bash default.
PROMPT='%m:%~ %n%b$(git_super_status) %# '

# git prompt :)
source ~/dotfiles/repos/zsh-git-prompt/zshrc.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm use stable

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
