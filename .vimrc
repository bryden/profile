
set nocompatible              " be iMproved, required
filetype off                  " required

 " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'                     "Vundle, the plug-in manager for Vim
Plugin 'tpope/vim-fugitive'                       "fugitive.vim: a Git wrapper so awesome, it should be illegal
Plugin 'L9'                                       "Vim-script library
"Plugin 'scrooloose/nerdtree'                      "A tree explorer plugin for vim.
"Plugin 'severin-lemaignan/vim-minimap'            "A Sublime-like minimap for VIM, based on the Drawille console-based drawing library
Plugin 'vim-airline/vim-airline'                  "lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes'           "A collection of themes for vim-airline
Plugin 'joonty/vdebug'                            "Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
Plugin 'othree/vim-autocomplpop'                  "Automatically opens popup menu for completions
Plugin 'majutsushi/tagbar'                        "Vim plugin that displays tags in a window, ordered by scope
Plugin 'blueyed/vim-diminactive'                  "Vim plugin to dim inactive windows
Plugin 'vim-syntastic/syntastic'                  "Syntax checking hacks for vim
Plugin 'Yggdroot/indentLine'                      "A vim plugin to display the indention levels with thin vertical lines
Plugin 'AlessandroYorba/Alduin'                   "the best vim theme there is
Plugin 'vim-scripts/CountJump'                    "Count number of matches of a pattern
Plugin 'vim-scripts/ingo-library'                 "Vimscript library of common functions
Plugin 'vim-scripts/ConflictMotions'              "Motions to and inside SCM conflict markers
Plugin 'vim-scripts/yaml.vim'                     "yaml syntax coloring script
Plugin 'shmay/vim-yaml'                           "Syntax coloring and functions for YAML
Plugin 'rhysd/vim-color-spring-night'             "Calm spring color scheme for Vim
Plugin 'lumiliet/vim-twig'                        "Twig syntax highlighting, snipMate, etc.
Plugin 'https://git.drupal.org/project/vimrc.git', {'rtp': 'bundle/vim-plugin-for-drupal/'}
"Plugin 'https://github.com/w0rp/ale.git'         "Asynchronous Lint Engine
Plugin 'https://github.com/airblade/vim-gitgutter.git' "A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plugin 'junegunn/gv.vim'                          "A git commit browser.
Plugin 'mileszs/ack.vim'                          "Vim plugin for the Perl module / CLI script 'ack'
Plugin 'vim-scripts/taglist.vim'                  "Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc) http://www.vim.org/scripts/script.php

"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'Blevs/vim-dzo'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'easysid/mod8.vim'

"Plugin 'marcopaganini/termschool-vim-theme'
" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax enable
set background=dark
colorscheme alduin

let g:diminactive_enable_focus = 1
autocmd VimEnter * DimInactive
":hi ColorColumn ctermbg=2 guibg=#004980
"let g:diminactive_use_syntax = 1

"let g:indent_guides_e_vim_startup = 0

let g:indentLine_color_term = 7

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

"autocmd VimEnter * Minimap
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

" General theme settings
let g:airline_theme = "spring_night"
let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Old NERDTree stuff.
"let g:NERDTreeDirArrows=0
"let NERDTreeShowHidden=1
"map <C-n> :NERDTreeToggle<CR>
"let g:ctrlp_map = '<C-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:minimap_highlight='SpecialComment'  "changes the highlight colours
"let g:airline_symbols.space = "\ua0"

let g:PHP_vintage_case_default_indent = 1 "fix the php switch statement indentations
let g:easytags_async=1

"set tags=tags;/ "find the closest tagfile
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
set tags=./tags;/

inoremap <expr> <CR> pumvisible()? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Quick save/load project
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr> " Quick open session with F3

nmap <F8> :TagbarToggle<CR>
"set Minimap
"set shortmess=Ot
"set cmdheight=2
"set background=dark
"set t_Co=256

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/bundle/yaml.vim/colors/yaml.vim " yaml syntax highlighting (plugin vim-scripts/yaml.vim)
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


" Drop Vdebug settings at the end of the file " 
let g:vdebug_options = {
\ 'path_maps': {'/var/www': '/stc/site-stc-rdc'},
\ 'watch_window_style': 'compact'
\ }

"let g:vdebug_options = {
" \ 'break_on_open': 1,
" \ 'path_maps': {'/path/to/app/in/docker': '/path/to/app/in/local'},
" \ 'port': '9000',
" \ 'watch_window_style': 'compact'
" \ }
" https://devforgalaxy.github.io/en/2016/09/14/debug-containerised-php-app-using-xdebug-with-vim-and-vdebug-en.html
hi MatchParen cterm=bold ctermbg=3 ctermfg=gray

if &diff
    colorscheme alduin
endif
