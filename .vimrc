" YoungVision personal config
" Optimized for Web Development

" Required
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" =============================================================== Plugin
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" General
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'

" Completition
Plugin 'valloric/youcompleteme'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'raimondi/delimitmate'
Plugin 'mattn/emmet-vim'

" Coloschemes
Plugin 'morhetz/gruvbox'

" Web
Plugin 'othree/html5.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'lumiliet/vim-twig'

" React
Plugin 'jbgutierrez/vim-babel'
Plugin 'mattn/webapi-vim'

call vundle#end()
filetype plugin indent on

"===================================================> General
set autoread

" Define leader key
let mapleader = ","
let g:mapleader = ","

"===================================================> Interface
" Line under cursor
set so=5

" Terminal support color
set t_Co=256

" Highlight seach results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" Disable sound on error
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Tab indent and other
set expandtab
set smarttab
set number

set shiftwidth=2
set tabstop=4

set ai "Auto indent
set si "Smart indent

" Syntax color
syntax on
set background=dark
colorscheme gruvbox

" Web
let php_sql_query = 1 " Coloration requetes SQL
let php_htmlInStrings = 1 "Coloration balises HTML

"====================================================> Mapping
" CtrlP mapping to Control-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" YCM match with ultisnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NERDTree mapping to Control-N
map <C-n> :NERDTreeToggle<CR>
