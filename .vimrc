" Basic options
set nocompatible
filetype off
syntax on

" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'wavded/vim-stylus'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mxw/vim-jsx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'yosiat/oceanic-next-vim'

" Vundle Teardown
call vundle#end()
filetype plugin indent on

" Advanced config
set encoding=utf-8
set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set cursorline
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
set dictionary=/usr/share/dict/words
set nofoldenable

" Make invisible characters visible on insert mode
set listchars=tab:▸\ ,eol:↩,extends:❯,precedes:❮,trail:␣,nbsp:␣
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
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" wrapping
set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" no arrow keys, fix j-k movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>

" Switch buffers like tabs
noremap <D-}> :bn<cr>
noremap <D-{> :bp<cr>

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.

" quick escape
inoremap kj <Esc>l

" Don't let me switch files in nerdtree buffer
let g:NERDTreeWinSize = 40
autocmd FileType nerdtree setlocal norelativenumber
autocmd FileType minibufexpl setlocal norelativenumber
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

" Make sure mini buf explorer shows on the top
let g:miniBufExplSplitBelow=0

set exrc			" enable per-directory .vimrc files
set secure			" disable unsafe commands in local .vimrc files

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/build/*,*/adm/dist/*
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_root_markers = ['.git', '.eslintrc']
autocmd VimEnter * CtrlPClearCache

" Mini buf explorer
autocmd FileType minibufexpl setlocal norelativenumber

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Airline fonts
let g:airline_powerline_fonts = 1
let g:airline_enable_syntastic = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s '
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#fnamemod = ':t'

" File types
au BufNewFile,BufRead .jshintrc set filetype=javascript
au BufNewFile,BufRead *.hbs set filetype=mustache
au BufNewFile,BufRead *.styl set filetype=stylus

set lines=500 columns=500
