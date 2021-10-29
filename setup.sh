#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
	#curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
	#sudo apt-get install -y nodejs
	ln -s -v -f "$(pwd)/.vim" $HOME
	ln -s -v -f "$(pwd)/.zplug" $HOME
	ln -s -v -f "$(pwd)/.config" $HOME
	ln -s -v -f "$(pwd)/.zshrc" $HOME
	ln -s -v -f "$(pwd)/.tmux.conf" $HOME
	zsh
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
			doIt;
	else
			read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
				echo "";
					if [[ $REPLY =~ ^[Yy]$ ]]; then
								doIt;
									fi;
fi;
unset doIt;
