## Dotfiles



#### Installation for Ubuntu

Install ZSH
```bash
$ sudo apt install zsh
```

Install Neovim: Make sure you have Neovim v0.5.0+.
```bash
$ sudo add-apt-repository ppa:neovim-ppa/stable
$ sudo apt-get update
$ sudo apt-get install neovim
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



#### How to make use of the clipboard

##### WSL

On the Windows Subsystem for Linux (WSL) I use `win32yank.exe` binary to have to fully use `d` `y` and `p` and simultaneously use the windows system clipboard. More info under: https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl

#### SSH to Ubuntu Server

While working on via SSH on a Linux Server I use the terminals default mouse support (e.g. wezterm) or the tmux mouse support instead of the vim mouse support. Thus it is possible to mark and copy everything directly from the vim buffer. Downside is that the `d` `y` and `p` command do not work. To disable vim mouse support I set the following in me `settings.lua`

```lua
vim.o.mouse="" --disable vim mouse, using default terminal mouse support for working on servers
```



#### Troubleshooting

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
$ export ZPLUG_HOME=~/dotfiles/.zplug
$ rm -rf .zplug
$ git clone https://github.com/zplug/zplug $ZPLUG_HOME
```

