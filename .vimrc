
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
Plugin 'blueyed/vim-diminactive'
Plugin 'vim-syntastic/syntastic'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'rhysd/vim-color-spring-night'
Plugin 'Blevs/vim-dzo'
Plugin 'easysid/mod8.vim'
Plugin 'AlessandroYorba/Alduin'
Plugin 'marcopaganini/termschool-vim-theme'

" All of your Plugins must be added before the following line 
call vundle#end()            " required 

syntax enable
set background=dark
colorscheme alduin

let g:diminactive_enable_focus = 1
autocmd VimEnter * DimInactive
":hi ColorColumn ctermbg=2 guibg=#004980
let g:diminactive_use_syntax = 1

"let g:indent_guides_e_vim_startup = 0

let g:indentLine_color_term = 4 

" dsf
  " dsf
    " sdf
  " sfad
" asdf
"

filetype plugin indent on    " required 

" Set the php syntax checkers for syntastic
let g:syntastic_php_checkers = ["php", "phpcs", "phpmd"]

" More syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



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

nnoremap // :noh<return><esc>
set cursorline
"hi clear CursorLine
hi CursorLine cterm=underline
"hi Cursor ctermfg=4 ctermbg=7 cterm=bold

"hi Comment ctermbg=black ctermfg=2
syntax enable 

"colorscheme "base16"

"if !exists('g:airline_symbols')
"  let g:airline_symbols = {} 
"endif 


let g:airline_theme = "spring_night"
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:minimap_highlight='Visual'  "changes the highlight colours
"let g:airline_symbols.space = "\ua0"


set encoding=utf-8
"set mouse=a
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set expandtab
set colorcolumn=80
set hlsearch
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

if &diff
    colorscheme evening
endif
