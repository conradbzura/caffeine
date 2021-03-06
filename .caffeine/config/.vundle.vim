set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize:
set rtp+=~/caffeine/.caffeine/bundle/Vundle
call vundle#begin('~/caffeine/.caffeine/bundle')

" Vundle
Plugin 'VundleVim/Vundle.vim', {'name': 'Vundle'}

" CamelCaseMotion
Plugin 'bkad/CamelCaseMotion', {'name': 'CamelCaseMotion'}

" NerdTree
Plugin 'scrooloose/nerdtree', {'name': 'NerdTree'}

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe', {'name': 'YouCompleteMe'}

" TagBar
Plugin 'majutsushi/tagbar', {'name': 'TagBar'}

" Airline
Plugin 'bling/vim-airline', {'name': 'Airline'}

" A
Plugin 'vim-scripts/a.vim', {'name': 'A'}

" AutoClose
Plugin 'Townk/vim-autoclose', {'name': 'AutoClose'}

" MultipleCursors
Plugin 'terryma/vim-multiple-cursors', {'name': 'MultipleCursors'}

" NerdCommentor
Plugin 'scrooloose/nerdcommenter', {'name': 'NerdCommenter'}

" UltiSnips
Plugin 'SirVer/ultisnips', {'name': 'UltiSnips'}

" Fugitive
Plugin 'tpope/vim-fugitive', {'name': 'Fugitive'}

" GitGutter
Plugin 'airblade/vim-gitgutter', {'name': 'GitGutter'}

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" See :h vundle for more details or wiki for FAQ.
