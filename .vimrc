" YoungVision personal config
" Optimized for Web Development

" Required
set nocompatible
filetype off
set hidden
set rtp+=~/.vim/bundle/Vundle.vim
" =============================================================== Plugin
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" General
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'

" Completition
Plugin 'Shougo/deoplete.nvim'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'raimondi/delimitmate'
Plugin 'mattn/emmet-vim'

" Coloschemes
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'roosta/srcery'

" Web
Plugin 'tpope/vim-haml'
Plugin 'othree/html5.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'lumiliet/vim-twig'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'tpope/vim-rails'

" React
Plugin 'mxw/vim-jsx'

" Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
set relativenumber

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
" Map jk on escape
imap jk <Esc>
" CtrlP mapping to Control-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NERDTree mapping to Control-N
map <C-n> :NERDTreeToggle<CR>

" Map js-beautify to Ctrl - f
map <c-f> :call JsBeautify()<cr>

" ==============================================> Plugin
" base16 required
let base16colorspace=256
" Use vim-jsx with simple js files
let g:jsx_ext_required = 0

" syntastic recommend config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:syntastic_javascript_checkers = ['eslint', 'standard']
let g:syntastic_cpp_checkers = ['avrgcc']

" CtrlP {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" }}}

" Vim Airline {{{
set laststatus=2
let g:airline_theme='minimalist'
" }}}

" Deoplete {{{
call deoplete#enable()
" }}}

" vim:foldmethod=marker:foldlevel=0
