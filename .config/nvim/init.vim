set termguicolors
set encoding=utf8

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:python_host_prog="/usr/bin/python"

let mapleader = "\<Space>"
let $GIT_SSL_NO_VERIFY = 'true'

set hidden
set nowrap
set backspace=indent,eol,start
set showmatch
set shiftround
set smartcase
set smarttab
set title
set pastetoggle=<F2>
set switchbuf=useopen

"Show tabs and spaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set wildmode=longest,list,full
set wildmenu

set hlsearch

autocmd InsertEnter,InsertLeave * set cul!

set noswapfile
set splitbelow
set splitright
set clipboard+=unnamedplus
set scrolloff=5
set number

" line numbers
" SilverSearch shortcut
nnoremap <C-F> :Ag! --ignore-dir log <SPACE>
" SilverSearch starts from current path
let g:ag_working_path_mode="r"

" Toggle NERDTree
map <Leader>t :NERDTreeToggle<CR>

" Exit terminal with ESC
:tnoremap <Esc> <C-\><C-n>

"split navigations
nnoremap <Leader>v <C-W>v

nmap <silent> <up> :wincmd k<CR>
nmap <silent> <down> :wincmd j<CR>
nmap <silent> <left> :wincmd h<CR>
nmap <silent> <right> :wincmd l<CR>

" Close buffers
map <Leader>q :Bd<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw set textwidth=80

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" Use UNIX (\n) line endings.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
" Indents in JS, HTML and CSS files
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'noah/vim256-color'

"Tab for insert completion needs
Plug 'ervandew/supertab'

"Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Buffers - better deletions
Plug 'moll/vim-bbye'

Plug 'blueyed/vim-diminactive'

"Silver search
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
vmap * <Plug>AgActionVisual
let g:vim_action_ag_escape_chars = '#%.^$*+?()[{\\|'

"Python
Plug 'klen/python-mode'

"Indenting lines
Plug 'Yggdroot/indentline'

"Nice icons
Plug 'ryanoasis/vim-devicons'

call plug#end()
let g:pymode_lint_cwindow = 0
let g:pymode_lint_message = 0
let g:pymode_rope = 0

let g:diminactive_buftype_blacklist = []
let g:airline#extensions#tabline#enabled = 1

colorscheme seoul256-light
let g:airline_theme='light'

let python_highlight_all=1
syntax on
