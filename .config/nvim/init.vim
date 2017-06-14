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
Plug 'christoomey/vim-run-interactive'
Plug 'vim-scripts/vim-coffee-script'
Plug 'janko-m/vim-test'
Plug 'benekastah/neomake'                                    " Linter/maker
Plug 'tpope/vim-rhubarb'
Plug 'vim-latex/vim-latex'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()
set scrolloff=5 " show lines above and below when scrolling
filetype plugin on " invoke plugins when you open file
filetype indent on " enables automatic indentation
set autoindent " always set autoindenting on
set backspace=indent,eol,start " allow backspacing over everything in insert mode
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
set modeline " enabel modelines
" show line numbers by default
"set relativenumber
"set number " Arror keys disabled in normal mode
set spell " spell check comments

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " change cursor shape depending on mode
let mapleader=","
nnoremap <C-p> :Files<CR>
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
xnoremap p "_dP " overwrite with yanked text in visual mode
set mouse=a " Enable use of the mouse for all modes - helpful for resizing buffers
set background=light
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

let g:netrw_liststyle=3 " shows 3rd liststyle in explorer mode
let g:netrw_altv=1 " open files on right
let g:netrw_winsize = 20 " winsize of netrw
" Show file preview in fzf
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:livepreview_previewer = 'open -a Preview'
"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
set noswapfile
set nobackup
