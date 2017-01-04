
set nocompatible              " be iMproved, required
filetype off                  " required

 " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 

" alternatively, pass a path where Vundle should install plugins 
"call vundle#begin('~/some/path/here')  

" let Vundle manage Vundle, required 
Plugin 'VundleVim/Vundle.vim'  
Plugin 'tpope/vim-fugitive' 
Plugin 'L9' 
" Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joonty/vdebug'
Plugin 'othree/vim-autocomplpop'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line 
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
" see :h vundle for more details or wiki for FAQ 
" Put your non-Plugin stuff after this line

autocmd VimEnter * Minimap
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

syntax enable 

"colorscheme "base16"

"if !exists('g:airline_symbols')
"  let g:airline_symbols = {} 
"endif 


let g:airline_theme = "solarized"
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:minimap_highlight='Visual'  "changes the highlight colours
"let g:airline_symbols.space = "\ua0"


set encoding=utf-8
set mouse=a
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set expandtab
set colorcolumn=80
set nu
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible()? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
"set Minimap
"set shortmess=Ot
"set cmdheight=2
"set background=dark
"set t_Co=256
