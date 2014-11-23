"execute pathogen#infect()
syntax on
filetype plugin indent on

"let g:airline_theme = 'flattown'
"colorscheme flattown			" Changes the color scheme
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
filetype plugin indent on
"au FileType python set1 shiftwidth=4 tabstop=4 noexpandtab
set autoindent					" Auto indents			
set smarttab					" Smart tabs (duh)
set noexpandtab             	" Use tabs instead of spaces
set shiftwidth=4            	" Makes tab width 4 spaces
set tabstop=4               	" Stops the tab every 4 spaces
" programs
"
" File settings
set nobackup				
set noswapfile

" After pressing shift-F11, the caps lock is mapped to esc
" map <S-F11> :!xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" Deletes whole word with ctrl-backspace
" imap <C-BS> <C-W>

"map <F7> mzgg=G`z<CR>

" Sets conventional mapping for clipboard copy / pasting
" Only works in gvim
vnoremap <C-c> "+y
vnoremap <C-v> "+p

set backspace=indent,eol,start
"set paste
set mouse=a

set laststatus=2
