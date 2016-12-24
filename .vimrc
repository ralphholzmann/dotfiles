" Basic options
set nocompatible
filetype off

" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'wavded/vim-stylus'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mxw/vim-jsx'
Plugin 'scwood/vim-hybrid'
Plugin 'othree/es.next.syntax.vim'
Plugin 'sickill/vim-monokai'
Plugin 'editorconfig/editorconfig-vim'

" Vundle Teardown
call vundle#end()
filetype plugin indent on

" Advanced config
syntax on
set background=dark
colorscheme monokai
set encoding=utf-8
set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set relativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set shell=/bin/zsh
set lazyredraw
set matchtime=3
set showbreak=↵
set splitbelow
set splitright
set ttimeout
set notimeout
set nottimeout
set autowrite
set shiftround
set autoread
set title
set cindent
set linebreak
set nofoldenable
set colorcolumn=100

" Make invisible characters visible on insert mode
set listchars=tab:▸\ ,eol:↩,extends:❯,precedes:❮,trail:_,nbsp:_
au InsertEnter * set list
au InsertLeave * set nolist

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" regex search fixes
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
let mapleader=","
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" no arrow keys, fix j-k movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>

" Switch buffers like tabs
nmap df :bnext<CR>
nmap fd :bprev<CR>

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    " It's 2016, Vim.

" quick escape
inoremap kj <Esc>l

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/build/*,*dist*
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_root_markers = ['.git']
autocmd VimEnter * CtrlPClearCache

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]




" Airline fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s '
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" File types
au BufNewFile,BufRead .jshintrc set filetype=javascript
au BufNewFile,BufRead *.hbs set filetype=mustache
au BufNewFile,BufRead *.styl set filetype=stylus
autocmd BufWritePre *.styl :%s/;//e

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1
let g:syntastic_javascript_checkers = ['eslint']

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:used_javascript_libs = 'jquery,react'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


