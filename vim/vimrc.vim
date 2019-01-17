set nocompatible
set guifont=UbuntuMono-Regular:h16
" set co=100
" set lines=50
colorscheme torte
set ve=all
syntax on
set number
set et
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set incsearch
set ignorecase

set hlsearch
set relativenumber

" have % bounce between angled brackets, as well as t'other kinds:
set matchpairs+=<:>

set t_Co=256
set autoindent
set smartindent

" make backspace act more sanely with tabs
set backspace=indent,eol,start

" who needs swapfiles...
set noswapfile
set nobackup

" set a line at 81
set cc=81

" remap jj to escape for easier times
inoremap jj <ESC>

"set mouse=a

"============================================================================
" PLUGINS
"============================================================================
"
" Specify a directory for Plugs
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'Plug'
call plug#begin('~/.vim/plugged')

" Command-T plug to fuzzy search files
Plug 'wincent/command-t'
Plug 'Shougo/vimproc.vim'

" Automatically insert delimiters
Plug 'Raimondi/delimitMate'

" ack to search files
Plug 'mileszs/ack.vim'

" ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" vim tags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'

" Ctrl+hjkl navigation for vim window and tmux window
Plug 'christoomey/vim-tmux-navigator'

set tags=./tags;,~/.vimtags

" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"
"-------------------------------------------------------------------------------
" A: Alternate between .h and .cpp files quickly
"-------------------------------------------------------------------------------
Plug 'vim-scripts/a.vim'

" Toggle files with A.vim
nmap <silent> <leader>a :A<cr>

"
" Toggle comments
"
Plug 'tomtom/tcomment_vim'

"-------------------------------------------------------------------------------
" Surround: Easy quoting!
"-------------------------------------------------------------------------------
Plug 'tpope/vim-surround'

"-------------------------------------------------------------------------------
" NERDTree: Shows a file-system tree in a sidebar.
"-------------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

"-------------------------------------------------------------------------------
" BetterWhitespace: hilights trailing whitespace, as well as double newlines.
" Also provides the StripWhitespace command I use elsewhere to clean up files.
"-------------------------------------------------------------------------------
Plug 'ntpeters/vim-better-whitespace'

" Command-T

nmap <silent> <Leader>p <Plug>(CommandT)
nmap <silent> <Leader>o <Plug>(CommandTTag)

"-------------------------------------------------------------------------------
" A: Alternate between .h and .cpp files quickly
"-------------------------------------------------------------------------------
Plug 'vim-scripts/a.vim'

" Initialize Plug system
call plug#end()
