" sergiofsfilho .vimrc file
"
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
set nocompatible
filetype off

" Begin Vundle Vim setup
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " " let Vundle manage Vundle, required
  Bundle 'VundleVim/Vundle.vim'
  " Plugins
  """ Syntax highlighting
  Plugin 'pearofducks/ansible-vim'
  Bundle 'chase/vim-ansible-yaml'
  Plugin 'godlygeek/tabular'
  Plugin 'plasticboy/vim-markdown'
  """ Themes
  Plugin 'jacoborus/tender'
  Plugin 'muellan/am-colors'
  Plugin 'akutschi/vim-colokschi'
  " Lightline status bar
  Plugin 'itchyny/lightline.vim'
  " NERDtree, file browser
  Plugin 'scrooloose/nerdtree'
  " Show indent line
  Plugin 'Yggdroot/indentLine'

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
" line numbers, F4 to enable/disable
set number
nnoremap <F4> :set number!<CR>
" indent lines, F5 to enable/disable
nnoremap <F5> :IndentLinesToggle<CR>

" file encoding and format
scriptencoding utf-8
set encoding=utf-8
set fileformats=unix,dos,mac

" keep 50 lines of command line history
set history=50
" show the cursor position all the time
set ruler
" display incomplete commands
set showcmd

" search settings
set incsearch  " do incremental search
set hlsearch   " highlight search
set smartcase  " be case sensitive when input has a capital letter
set ignorecase " be case insensitive when searching

" set Monaco 11 as default font
" set guifont=Monaco\ 11
set guifont=Menlo\ for\ Powerline\

" indent settings
set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case

set showmatch                 " Show matching brackets.
set matchtime=2               " Bracket blinking.

" status bar settins
" let g:lightline = { 'colorscheme': 'wombat'}

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

set laststatus=2 " to show the status bar
set cmdheight=1  " height to show commands below status bar
set showcmd

" Map NERDtree to CTRL+o
nnoremap <C-o> :NERDTreeToggle<CR>

" Indentation settings - tabs or whitespaces
if has ("autocmd")
     filetype on
     autocmd FileType make setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab smarttab
     autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
     " Treat .rss files as XML
     autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
