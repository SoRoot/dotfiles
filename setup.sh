#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

#this lib must be installed to use tagbar explorer to show variables and methods
function installCflags() {
	tar -xvzf ctags-5.8.tar.gz
	cd ctags-5.8
	echo -e "\n"
	echo "--------------Exuberant Ctags--------------"
	echo "Please insert desired directory for Exuberant Ctags!" 
	echo "For example /home/<USER>/dotfiles as it is predefined in the .vimrc line:98" 
	read -p "Ctags dir: " ctagdir
	./configure --prefix=$ctagdir
	make
	make check
	make install
	make clean
	make distclean
	cd ..
}

function doIt() {
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
	#curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
	#sudo apt-get install -y nodejs
	ln -svf "$(pwd)/.zplug" $HOME
	ln -svf "$(pwd)/.zshrc" $HOME
	ln -svf "$(pwd)/.tmux.conf" $HOME
	[[ -d $HOME/.config ]] || mkdir $HOME/.config
	ln -svf "$(pwd)/.config/nvim" $HOME/.config
	ln -svf "$(pwd)/.config/htop" $HOME/.config
	
	echo -e "\n"
	read -p "Do you want to install packer.nvim a lua plugin/package manager for Nvim? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	fi;


	echo -e "\n"
	read -p "Do you want to install Exuberant Ctags to have C support for Tagbar? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		installCflags;
	fi;

	chsh -s $(which zsh)
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
