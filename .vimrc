"Preamble ---------------------------------------------------------------- {{{
call pathogen#infect()
syntax on
filetype off
filetype plugin indent on
set nocompatible




" Basic options ----------------------------------------------------------- {{{
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
set relativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set shell=/bin/bash
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

" Save when losing focus
au FocusLost * :wa

au VimResized * :wincmd =

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
inoremap kj <Esc>
au InsertLeave <buffer> :w
au InsertLeave <buffer> :SyntasticCheck

" Don't let me switch files in nerdtree buffer
let g:NERDTreeWinSize = 60
autocmd FileType nerdtree setlocal norelativenumber
autocmd FileType minibufexpl setlocal norelativenumber
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

autocmd InsertLeave * :%s/^\s\+$//e

" Make sure mini buf explorer shows on the top
let g:miniBufExplSplitBelow=0

set exrc			" enable per-directory .vimrc files
set secure			" disable unsafe commands in local .vimrc files

au BufNewFile,BufRead .jshintrc set filetype=javascript

"Powerline settings
let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
"

function ToggleScheme()
  if &background ==# "dark"
    colorscheme solarized
    set background=light
  else
    set background=dark
    colorscheme molokai
  endif
endfunction

function ToggleIndent()
  if &tabstop ==# 2
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set noexpandtab
  else
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set expandtab
  endif
endfunction

noremap <F5> :call ToggleScheme()<cr>
noremap <F6> :call ToggleIndent()<cr>

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open

autocmd FileType minibufexpl setlocal norelativenumber
let g:syntastic_check_on_open=1
au InsertLeave * SyntasticCheck

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
