## Dotfiles

### Installation

#### Insatllation for Ubuntu

Install ZSH
```bash
$ sudo apt install zsh
```

Install Neovim
```bash
$ sudo apt install neovim
```

Install repo
```bash
git clone git@github.com:SoRoot/dotfiles.git && cd dotfiles && ./setup.sh
```

Creat symbolic link to dotfiles folder.
```bash
$ ln -s -f /dir/to/dotfile/.vim $HOME
$ ln -s -f /dir/to/dotfile/.zplug $HOME
$ ln -s -f /dir/to/dotfile/.config $HOME
$ ln -s -f /dir/to/dotfile/.zshrc $HOME
```


