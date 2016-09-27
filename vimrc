set nocompatible
filetype off

" Begin Vundle Vim setup
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'
" Plugins
""" syntax highlighting
Plugin 'pearofducks/ansible-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Themes
Plugin 'jacoborus/tender'
Plugin 'muellan/am-colors'
call vundle#end()
filetype plugin indent on    " required
" End Vundle Vim setup
syntax on
set title
" Set colorscheme
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	set t_Co=256
	colorscheme tender
endif
" highlight current line, F3 to enable/disable
set cursorline
nnoremap <F3> :set cursorline!<CR>
" show line number, F4 to enable/disable
set number
nnoremap <F4> :set number!<CR>

" file encoding and format
set encoding=utf-8
set fileformats=unix,dos,mac

" keep 50 lines of command line history
set history=50
" show the cursor position all the time
set ruler
" display incomplete commands
set showcmd
" do incremental searching
set incsearch


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
