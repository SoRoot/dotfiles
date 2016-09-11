call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'lilydjwg/colorizer'
Plug 'majutsushi/tagbar'
Plug 'Chiel92/vim-autoformat'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-bundler'
Plug 'slim-template/vim-slim'
Plug 'fatih/vim-go'
Plug 'tComment'
Plug 'christoomey/vim-run-interactive'
Plug 'vim-scripts/vim-coffee-script'
Plug 'janko-m/vim-test'
Plug 'ctrlp.vim'
Plug 'syntastic'
Plug 'tpope/vim-rhubarb'
" Plug 'Valloric/YouCompleteMe'
call plug#end()
set scrolloff=5 " show lines above and below when scrolling
filetype plugin indent on
set autoindent " always set autoindenting on
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set cursorline " highlight current line
set history=50 " keep 50 lines of command line history
set hlsearch " highlight matches
set ignorecase " Case insensitive search
set smartcase " Case sensitive then capital is typed
set incsearch " search as characters are entered
set laststatus=2 "Always show the status line
set lazyredraw " redraw only when we need to
set number "show line numbers
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set synmaxcol=250 " Maximum length of syntax highlighting
set wildmenu " Complete commands
set wrapscan " Wrap when searching to beginning
set clipboard=unnamed " using clipboard from mac osx
set tabstop=2 " tap is only 2 spaces 
set shiftwidth=2 " tap 2
set foldmethod=syntax " folding based on syntax
set foldlevelstart=20 " closed fold only ober 20
" Arror keys disabled in normal mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " change cursor shape depending on mode
let mapleader=","
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap . :
nnoremap - .
nnoremap <leader>e :Lexplore<CR> " toggle for Lexplore 
nnoremap <leader>t :TagbarToggle<CR> " toggle object hirachy
nnoremap <leader>v :tabedit $MYVIMRC<CR> " open vimrc in ohter tap
nnoremap <leader>l :set wrap!<CR> " toggle linewrapping
nnoremap <S-Enter> O<Esc> " shift enter => line above
nnoremap <CR> o<Esc> " enter => line below
xnoremap p "_dP " overwtrie with yanked text in visual mode

syntax enable
set background=light
colorscheme solarized

let g:netrw_liststyle=3 " shows 3rd liststyle in explorer mode
let g:netrw_altv=1 " open files on right
let g:netrw_winsize = 20 " winsize of netrw
set noswapfile
set nobackup
