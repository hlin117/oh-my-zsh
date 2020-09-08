" This is a comment
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"" I never use these anyways...
"nmap <F4> :make clean <CR>
"nmap <F5> :make <bar> copen <CR>

" Change the cursor shape on a mac running iterm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set number                  	" Line numbering
set scrolloff=5					" Five lines of content beneath the cursor
syntax on					" Turns on automatic highlighting
set nowrap
set ruler
set magic						" Finds regular expressions
set showmatch
set ff=unix                     " Sets the file format to unix

" Allows you to use the "*" register
set clipboard=unnamed

" Search settings
"set incsearch
set smartcase
set hlsearch                    " Show matches as you type
set wildmode=longest,list		" Completion for command line settings
set wildmenu

" Tab settings
set autoindent					" Auto indents
set smarttab					" Smart tabs (duh)
set expandtab             		" Use spaces instead of tabs
set shiftwidth=4            	" Makes tab width 4 spaces
set tabstop=4               	" Stops the tab every 4 spaces
set autoread                    " No refreshing anymore

" File settings
set nobackup
set noswapfile
set nowritebackup

set backspace=indent,eol,start
set mouse=a

nnoremap <S-h> :tabprevious<CR>    " Remaps shift+h to going to the previous tab
nnoremap <S-l> :tabnext<CR>      " Remaps shift+l to going to the next tab
map <S-k> <Nop>
nnoremap q <Nop>						" Turns off recording mode
map <C-e> <Nop>

set colorcolumn=80

set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.log,*.aux

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
augroup END

" Using file extension to remove trailing whitespaces when you save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Really sexy UI customizations
colorscheme flattown  " Changes the color scheme
set laststatus=2

"let g:airline_theme = 'flattown'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '▶'
" let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source ~/.vim/scripts/Rename.vim " A script to rename files
"source ~/.vim/scripts/tetris.vim " A script to play tetris, leader te
