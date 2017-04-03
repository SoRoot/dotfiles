
# Prevents grep options deprecation message
unset GREP_OPTIONS

alias v=nvim 
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

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "lib/completion", from:oh-my-zsh
zplug "mafredri/zsh-async", from:github
zplug "dracula/zsh", as:theme
zplug "rupa/z", use:z.sh

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

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
