" This is a comment
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
au FileType latex indent off
au FileType plaintex indent off

nmap <F4> :make clean <CR>
nmap <F5> :make <bar> copen <CR>

" Change the cursor shape on a mac running iterm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

colorscheme flattown			" Changes the color scheme
set number                  	" Line numbering
set scrolloff=5					" Five lines of content beneath the cursor
syntax on					" Turns on automatic highlighting	
set nowrap
set ruler				
set magic						" Finds regular expressions

" Allows you to use the "*" register
set clipboard=unnamed

" Search settings
set incsearch
set smartcase
set hlsearch
set wildmode=longest,list		" Completion for command line settings 

" Tab settings
set autoindent					" Auto indents			
set smarttab					" Smart tabs (duh)
set expandtab             		" Use spaces instead of tabs
set shiftwidth=4            	" Makes tab width 4 spaces
set tabstop=4               	" Stops the tab every 4 spaces

" File settings
set nobackup				
set noswapfile

set backspace=indent,eol,start
set mouse=a
"set laststatus=2


" Preserves the last editing position
" Source: http://stackoverflow.com/questions/7894330/preserve-last-editing-position-in-vim
source $VIMRUNTIME/vimrc_example.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'flattown'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-t> :NERDTreeToggle<CR>
let g:NERDTreeShowLineNumbers = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/tmhedberg/SimpylFold
set foldmethod=indent
set foldlevel=20
let g:SimpylFold_fold_docstring = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_dir = '.'
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_bookmarks = ['~/.vimrc', '~/.bashrc']
let g:startify_custom_header =
  \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
let g:startify_list_order = [
		\ ['   Saved sessions:'],
		\ 'sessions',
		\ ['   Saved bookmarks:'],
		\ 'bookmarks',
		\ ]
let g:startify_session_default_name = 'Session.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" A script to rename files
source ~/.vim/scripts/Rename.vim

" The ctrl p plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
