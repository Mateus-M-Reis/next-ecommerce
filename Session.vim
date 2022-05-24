let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +1 README.md
badd +14 pages/index.js
badd +14 components/Layout.js
badd +12 utils/styles.js
argglobal
%argdel
$argadd README.md
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit README.md
argglobal
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
if exists(':tcd') == 2 | tcd ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce | endif
tabnext
edit ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce/pages/index.js
argglobal
balt ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce/components/Layout.js
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
8
normal! zo
9
normal! zo
let s:l = 14 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 02|
if exists(':tcd') == 2 | tcd ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce | endif
tabnext
edit ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce/components/Layout.js
argglobal
balt ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce/utils/styles.js
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
9
normal! zo
13
normal! zo
let s:l = 14 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 02|
if exists(':tcd') == 2 | tcd ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce | endif
tabnext
edit ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce/utils/styles.js
argglobal
balt ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce/components/Layout.js
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
3
normal! zo
4
normal! zo
let s:l = 10 - ((9 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 04|
if exists(':tcd') == 2 | tcd ~/Códigos/CURSOS/Coding\ with\ Basir/next-ecommerce | endif
tabnext 4
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
