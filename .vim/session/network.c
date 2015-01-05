let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/lemondetection/NN
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 train.c
badd +55 data.c
badd +1 network.c
argglobal
silent! argdel *
argadd train.c
set stal=2
edit data.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 90 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 89 + 90) / 180)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
35
normal! zo
55
normal! zo
82
normal! zo
88
normal! zo
let s:l = 66 - ((27 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 09|
wincmd w
argglobal
edit train.c
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
41
normal! zo
49
normal! zo
50
normal! zo
53
normal! zo
73
normal! zo
83
normal! zo
83
normal! zo
86
normal! zo
101
normal! zo
let s:l = 29 - ((24 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 89 + 90) / 180)
tabedit network.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
12
normal! zo
16
normal! zo
32
normal! zo
40
normal! zo
44
normal! zo
62
normal! zo
101
normal! zo
123
normal! zo
126
normal! zo
195
normal! zo
224
normal! zo
260
normal! zo
let s:l = 150 - ((15 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
150
normal! 05|
2wincmd w
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
