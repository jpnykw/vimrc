source $VIMRUNTIME/defaults.vim

" plugins
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))
" ============================================================
call dein#add('Shougo/dein.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('ryanoasis/vim-devicons')
" ============================================================
call dein#end()

" powerlines
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" automatically install
let g:dein#auto_recache = 1
if dein#check_install()
  call dein#install()
endif

" colorscheme
filetype plugin indent on
syntax enable
" colorscheme wombat
colorscheme molokai
" colorscheme monokai
" colorscheme jellybeans
" let g:hybrid_custom_term_colors = 1
" colorscheme hybrid

set wildmenu
set history=5000

set number
set showmatch
set backspace=indent,eol,start
" set cursorline

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

set incsearch
set smartcase
set ignorecase
set hlsearch

set expandtab " replace tabs into spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set nowrap

" mapping keys
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" move buffer
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

" allow move bufferr without save
set hidden

let &t_SI .= "\e[6 q"
let &t_EI .= "\e[6 q"
