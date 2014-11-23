execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

let g:airline_theme = 'flattown'
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
filetype plugin indent on
"au FileType python set1 shiftwidth=4 tabstop=4 noexpandtab
set autoindent					" Auto indents			
set smarttab					" Smart tabs (duh)
set noexpandtab             	" Use tabs instead of spaces
set shiftwidth=4            	" Makes tab width 4 spaces
set tabstop=4               	" Stops the tab every 4 spaces

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
map <C-t> :NERDTreeToggle<CR>
set laststatus=2

" https://github.com/tmhedberg/SimpylFold
set foldmethod=indent
set foldlevel=20
let g:SimpylFold_fold_docstring = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To save the current view.
if exists("g:loaded_restore_view")
    finish
endif
let g:loaded_restore_view = 1

if !exists("g:skipview_files")
    let g:skipview_files = []
endif

function! MakeViewCheck()
    if &l:diff | return 0 | endif
    if &buftype != '' | return 0 | endif
    if expand('%') =~ '\[.*\]' | return 0 | endif
    if empty(glob(expand('%:p'))) | return 0 | endif
    if &modifiable == 0 | return 0 | endif
    if len($TEMP) && expand('%:p:h') == $TEMP | return 0 | endif
    if len($TMP) && expand('%:p:h') == $TMP | return 0 | endif

    let file_name = expand('%:p')
    for ifiles in g:skipview_files
        if file_name =~ ifiles
            return 0
        endif
    endfor

    return 1
endfunction

augroup AutoView
    autocmd!
    " Autosave & Load Views.
    autocmd BufWritePre,BufWinLeave ?* if MakeViewCheck() | silent! mkview | endif
    autocmd BufWinEnter ?* if MakeViewCheck() | silent! loadview | endif
augroup END

set viewoptions=cursor,folds,slash,unix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
