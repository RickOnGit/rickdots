export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export EZA_CONFIG_DIR="$HOME/.config/eza"

plugins=(git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

source $ZSH/oh-my-zsh.sh
unset LS_COLORS

alias ls='eza --color=always --icons'
alias fastfetch='~/.config/fastfetch/nerdfetch.sh'

fastfetch

clear(){
	command clear
	fastfetch
}

eval "$(starship init zsh)"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
