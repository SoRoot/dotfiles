return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- packer can manage itself
	use 'majutsushi/tagbar' --rightexplorer shows variables and methods
	use 'scrooloose/nerdcommenter' --shortcut for comments <leader>c<space>
	use {'junegunn/fzf',  run=":call fzf#install()" } --fuzzy finder for finding files
	use 'junegunn/fzf.vim' --default Vimscript for fzf 
	use 'neovim/nvim-lspconfig' --Neovims built-in language server client
	use 'hrsh7th/nvim-cmp' --autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' --lsp source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' --snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' --snippets plugin
	use 'tpope/vim-fugitive' --git inside nvim, all git commands work (depends on my .gitconfig)
	use 'Chiel92/vim-autoformat' --Autoformat code
end)

