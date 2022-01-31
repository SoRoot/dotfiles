
# Prevents grep options deprecation message
unset GREP_OPTIONS

alias v=nvim 
alias 'sv'='sudo nvim'
alias ll='ls -alF'
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# History search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# zplug
if [[ ! -d ~/.zplug ]]; then
		git clone https://github.com/zplug/zplug ~/.zplug
		source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

plugins=(git battery)

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "mafredri/zsh-async", from:github
zplug "rupa/z", use:z.sh
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme


#zplug "lib/completion", from:oh-my-zsh
#zplug "plugins/brew", from:oh-my-zsh
#zplug "plugins/brew-cask", from:oh-my-zsh
#zplug "plugins/git",   from:oh-my-zsh
#zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
#zplug "plugins/colorize", from:oh-my-zsh
#zplug "kennethreitz/oh-my-zsh", use:"lib/*.zsh"
#zplug "themes/kennethreitz", from:oh-my-zsh


# Install packages that have not been installed yet
if ! zplug check --verbose; then
		printf "Install? [y/N]: "
		if read -q; then
				echo; zplug install
		else
				echo
		fi
fi

zplug load 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
