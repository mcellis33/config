set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'surround.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
set clipboard=unnamed
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Display incomplete command
set showcmd
set nowrap "do not wrap lines
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set whichwrap=b,s
" Allow backspace in insert mode
set backspace=indent,eol,start
set guioptions-=T
set guioptions-=m
set guioptions+=a
set noicon
set ruler "show line and column numbers of cursor
set incsearch "search continuously while typing
set virtualedit=block "allow virtual editing in virtual block mode
set nu "line numbering
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter
set guifont=Menlo:h11

" Enable all Go plugins
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif
set runtimepath+=/usr/local/go/misc/vim " replace $GOROOT with the output of: go env GOROOT
filetype plugin indent on
syntax on

" Automatically gofmt Go source files when they are saved
autocmd FileType go autocmd BufWritePre <buffer> Fmt
" Automatically set compiler for Go source files
autocmd FileType go compiler go
