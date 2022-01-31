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

Install tmux
```bash
$ sudo apt-get install tmux
```

Install repo with ssh
```bash
$ git clone git@github.com:soroot/dotfiles.git && cd dotfiles && ./setup.sh
```
Install repo with https
```bash
$ git clone https://github.com/SoRoot/dotfiles.git && cd dotfiles && ./setup.sh
```
First time opening vim you will see some errors because some plugins are not installed.
Inside NVIM run:
```bash
:PackerInstall
```

#### Troubelshooting
If you encounter errors like this:
```bash
__zplug::io::file::load:3: command not found: __zplug::log::write::info
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
__zplug::core::sources::call:5: command not found: __zplug::log::capture::error
```
Just do the following
```bash
$ cd dotfiles
$ rm -rf .zplug
$ export ZPLUG_HOME=~/dotfiles/.zplug
$ git clone https://github.com/zplug/zplug $ZPLUG_HOME
```

