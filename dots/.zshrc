# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export EZA_CONFIG_DIR="$HOME/.config/eza"
export EDITOR=nvim

plugins=(git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
unset LS_COLORS
alias ls='eza --color=always --icons'
alias fastfetch='~/.config/fastfetch/nerdfetch.sh'

tmux(){
  ans=$(gum input --header "Choose a session name")
  /usr/bin/tmux new -s "$ans"
}

clear(){
	command clear
	fastfetch
}

fastfetch

#eval "$(starship init zsh)"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=/usr/local/jvm/java-21-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
