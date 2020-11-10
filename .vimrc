"  文字コード
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" 表示関連
set number
set title
set cursorline

" インデント設定
set expandtab
set smartindent
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2

" 検索関係
set ignorecase
set smartcase
set wrapscan
set hlsearch
set incsearch

" プラグイン管理
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
      echo "install NeoBundle..."
      :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Yggdroot/indentLine'
"----------------------------------------------------------
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" ステータスライン
set ruler
set showmode
set showcmd
set laststatus=2

" カラースキーム
if neobundle#is_installed('molokai')
  colorscheme molokai
endif
set t_Co=256
syntax enable

