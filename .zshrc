# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

## to libtorch or not to libtorch 
export LIBTORCH=/Users/alfie/codehub/libtorch
export LIBTORCH_INCLUDE=/Users/alfie/codehub/libtorch
export LIBTORCH_LIB=/Users/alfie/codehub/libtorch
export LD_LIBRARY_PATH=${LIBTORCH}/lib:$LD_LIBRARY_PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"


## Aliases :D 
alias vim="nvim"
alias gap="git add -p"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"
alias lsx="exa --long --header --git"
alias aseprite="/Users/alfie/codehub/aseprite/build/bin/aseprite"
alias myip="curl https://ipinfo.io/json" # or /ip for plain-text ip
alias home="vim /Users/alfie/codehub/obsidianvault/fifisv"

# Too many plugins will kill us :)
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
alias zshcode="code ~/.zshrc"
