" autoinstall vim-plug Vim plugin manager
if empty(glob('~/dotfiles/.config/nvim/autoload/plug.vim'))
	silent !curl -flo ~/dotfiles/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'pangloss/vim-javascript'	"javascript syntax highlighting and improved indentation
"Plug 'lilydjwg/colorizer' "colorize all text
Plug 'majutsushi/tagbar' "rightexplorer shows variables and methods
"Plug 'Chiel92/vim-autoformat' "formats code with one button
"Plug 'SirVer/ultisnips' "snippets for vim
"Plug 'honza/vim-snippets' "snippets for different pro lang
"Plug 'altercation/vim-colors-solarized' "colorscheme for vim
"Plug 'tpope/vim-rake' "to use rake for rubyOnRails
"Plug 'vim-ruby/vim-ruby' "config files for editing and compiling ruby
Plug 'scrooloose/nerdcommenter' "shortcut for comments <leader>c<space>
Plug 'tpope/vim-eunuch' "adds UNIX shell commands to vim (:Mkdir :SudoWrite :Move)
Plug 'tpope/vim-repeat' "\.command using plugin map rather than just one native command
"Plug 'tpope/vim-endwise' "automatic ending of structres (if,do,def) for Ruby,shell,C++
"Plug 'tpope/vim-fugitive' "git integration for vim
"Plug 'pbrisbin/vim-mkdir' "creates directory with mkdir
"Plug 'tpope/vim-rails' "for editing RubyOnRails
Plug 'tpope/vim-projectionist' " with :A you can cycle threw test.c test.h thest-interface.c automatically
"Plug 'tpope/vim-surround' "change surroundings with cs'<q> for <q>Hello World!</q>
"Plug 'tpope/vim-bundler' "rubyOnRails commands for splitview and lexplore
"Plug 'slim-template/vim-slim' "slim syntax highlighting for vim
"Plug 'fatih/vim-go' "go language support
"Plug 'christoomey/vim-run-interactive' "temporary making vim shell interactive, intensive task
"Plug 'vim-scripts/vim-coffee-script' "support for CoffeScript, smaler version of javascript
"Plug 'janko-m/vim-test' "wrapper for running tests C# Java JavaScript PHP Python Ruby Shell
"Plug 'neomake/neomake' "automatically will run programm and display errors and warnings whilst coding
"Plug 'tpope/vim-rhubarb' "github integration for vim p.e. open URLS
"Plug 'vim-latex/vim-latex' "tools for editing LaTeX
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "fuzzy finder for finding files
Plug 'junegunn/fzf.vim' "default Vimscript for fzf 
"Plug 'xuhdev/vim-latex-live-preview' "provides live preview of the output PDF
"Plug 'neoclide/coc.nvim', {'branch': 'release'} "snippets with full Language Server support
Plug 'neovim/nvim-lspconfig' "Neovims built-in language server client
call plug#end()

"Filtype is used if you have language specific config files that don't ocurre
"on the VIMRC
filetype plugin on " invoke plugins when you open file
filetype indent on " enables automatic indentation

set scrolloff=5 " show lines above and below when scrolling
set autoindent " copy the indentation from the previous lines
set backspace=indent,eol,start "make backspace work like most other programs
set cursorline " highlight current line
set history=50 " keep 50 lines of command line history
set hlsearch " highlight matches
set ignorecase " Case insensitive search
set smartcase " Case sensitive then capital is typed
set incsearch " search as characters are entered
set laststatus=2 "Always show the status line
set grepprg=grep\ -nH\ $* " always generates a file-name
set lazyredraw " redraw only when we need to
set number "show line numbers
set ruler " show the cursor position in status line
set showcmd " displays editor commands in command line
set synmaxcol=250 " Maximum length of syntax highlighting
set wildmenu " Completes commands in command line
set wrapscan " Wrap when searching to beginning
set clipboard=unnamed " using clipboard from mac osx
set tabstop=2 " tap is only 2 spaces 
set shiftwidth=2 " tap 2
set foldmethod=syntax " folding based on syntax
set foldlevelstart=20 " closed fold only ober 20
set modeline " enabel custimized modeline methods
set mouse=a " Enable use of the mouse for all modes - helpful for resizing buffers
"show line numbers by default
"set relativenumber
"set number " Arror keys disabled in normal mode

"Spell for comments. Default is english. Not using default URL
""set spell " spell check comments
"let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

""change cursor shape depending on mode
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

let mapleader=","
nnoremap <C-p> :Files<CR>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

"On MasOS with german keyboard i like to switch these
"nnoremap . : 
"nnoremap - .

nnoremap <leader>e :Lexplore<CR> " toggle for Lexplore 
nnoremap <leader>t :TagbarToggle<CR> " toggle object hirachy
nnoremap <leader>v :tabedit $MYVIMRC<CR> " open vimrc in ohter tap
nnoremap <leader>l :set wrap!<CR> " toggle linewrapping
nnoremap <S-Enter> O<Esc> " shift enter => line above
nnoremap <CR> o<Esc> " enter => line below
xnoremap p "_dP " overwrite with yanked text in visual mode

" solarized options 
"syntax enable
""set background=light
"colorscheme solarized
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"

let g:netrw_liststyle=3 " shows 3rd liststyle in explorer mode
let g:netrw_altv=1 " open files on right
let g:netrw_winsize = 20 " winsize of netrw
" Show file preview in fzf
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:livepreview_previewer = 'open -a Preview'

"Activating python and python3 in virtualenv for PowerShell
"let g:python3_host_prog='C:/Users/lukas/Envs/neovim3/Scripts/python.exe'
"let g:python_host_prog='C:/Users/lukas/Envs/neovim/Scripts/python.exe'

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash
"set noshellslash " using shell commandos in Powershell

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"nobackup is going to be set by coc.vim. These is the config for CoC
"source $HOME/AppData/Local/nvim-data/site/plug-config/coc.vim
"set noswapfile "does not create a 'filename.swp' can be good to recover changes with undo/redo
"set nobackup "does not create a 'filename.ext' backup file before edit
