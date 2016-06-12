" Remap visual-mode
map <C-S-v> <C-V>

" Find prompt (ctrl-f)
noremap <C-f> :promptfind<CR>
vnoremap <C-f> :promptfind<CR>
onoremap <C-f> <C-C>:promptfind<CR>
inoremap <C-f> <C-O>:promptfind<CR>
cnoremap <C-f> <C-C>:promptfind<CR>

"TODO add find-and-replace prompt

" Select all (ctrl-a)
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Cut (ctrl-x)
vnoremap <C-x> "+x

" Copy (ctrl-c)
vnoremap <C-c> "+ygv

" Paste (ctrl-v)
map <C-v> "+gP
cmap <C-v> <C-R>+
exe 'inoremap <script>  <C-v> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script>  <C-v> '       . paste#paste_cmd['v']

" Move to start of line (home)
nnoremap <expr> <Home> virtcol(".") > 1 ? 'g0' : 'g^'
xnoremap <Home> <Esc><Home>
snoremap <Home> <Esc><Home>i

" Move to end of line (end)
nnoremap <expr> <End> virtcol(".") < virtcol("$") ? 'g$l' : 'g_l'
xmap <End> <Esc><End>
snoremap <End> <Esc><End>a

" Normal-mode arrow-select ([ctrl]-shft-left/right/up/down)
nmap <C-S-Left> v\b
nmap <C-S-Right> v\e
nnoremap <S-Left> v<Left>
nnoremap <S-Right> v<Right>
nnoremap <C-S-Up> V<Up>
nnoremap <C-S-Down> V<Down>
nnoremap <S-Up> v<Up>
nnoremap <S-Down> v<Down>

" Normal-mode home/end-select (shft-home/end)
nnoremap <S-Home> vg0
nnoremap <S-End> vg$

" Insert-mode arrow-select ([ctrl]-shft-left/right/up/down)
imap <C-S-Left> <Esc>lv\b<C-G>
imap <expr> <C-S-Right> virtcol(".") > 1 ? '<Esc>lv\e<C-G>' : '<Esc>v\e<C-G>'
inoremap <S-Left> <Esc>lv<Left><C-G>
inoremap <expr> <S-Right> virtcol(".") > 1 ? '<Esc>lvl<C-G>' : '<Esc>vl<C-G>'
inoremap <C-S-Up> <Esc>V<Up><C-G>
inoremap <C-S-Down> <Esc>V<Down><C-G>
inoremap <expr> <S-Up> virtcol(".") > 1 ? '<Esc>lv<Up><C-G>' : '<Esc>v<Up><C-G>'
inoremap <expr> <S-Down> virtcol(".") > 1 ? '<Esc>lv<Down><C-G>' : '<Esc>v<Down><C-G>'

" Insert-mode home/end-select (shft-home/end)
inoremap <expr> <S-Home> virtcol(".") < virtcol("$") ? '<Esc>lvg^<C-G>' : '<Esc>vlog^<C-G>'
imap <expr> <S-End> virtcol(".") > 1 ? '<Esc>lvg_<C-G>' : '<Esc>vg_<C-G>'

" Visual-mode arrow-select ([ctrl]-shft-left/right/up/down)
xmap <C-S-Right> \e
xmap <C-S-Left> \b
xnoremap <C-S-Up> <Up>
xnoremap <C-S-Down> <Down>
xnoremap <S-Right> <Right>
xnoremap <S-Left> <Left>
xnoremap <S-Up> <Up>
xnoremap <S-Down> <Down>
xmap <Right> <Esc><Right>
xmap <Left> <Esc><Left>
xmap <Up> <Esc><Up>
xmap <Down> <Esc><Down>

" Visual-mode home/end-select (shft-home/end)
xmap <expr> <S-Home> virtcol(".") > 1 ? 'g0' : 'g^'
xnoremap <expr> <S-End> virtcol(".") < virtcol("$") ? 'g$l' : 'g_l'

" Select-mode arrow-select ([ctrl]-shft-left/right/up/down)
smap <C-S-Right> <C-G>\e<C-G>
smap <C-S-Left> <C-G>\b<C-G>
snoremap <C-S-Up> <Up>
snoremap <C-S-Down> <Down>
snoremap <S-Right> <Right>
snoremap <S-Left> <Left>
snoremap <S-Up> <Up>
snoremap <S-Down> <Down>
smap <Right> <Esc><Right>a
smap <Left> <Esc><Left>a
smap <Up> <Esc><Up>a
smap <Down> <Esc><Down>a

" Select-mode home/end-select (shft-home/end)
smap <expr> <S-Home> virtcol(".") > 1 ? '<C-G>g0<C-G>' : '<C-G>g^<C-G>'
snoremap <expr> <S-End> virtcol(".") < virtcol("$") ? '<C-G>g$l<C-G>' : '<C-G>g_l<C-G>'

"TODO fix
" Move selection left (alt-left)
"nnoremap <A-Left> Xph
"inoremap <A-Left> <Esc>Xpi
"vnoremap <A-Left> "+xh"+gP`[v`]

"TODO fix
" Move selection left (alt-left)
"nnoremap <A-Right> xp
"inoremap <A-Right> <Esc>xpi
"vnoremap <A-Right> "+xl"+gP`[v`]

" Move selected lines up (alt-up)
nnoremap <A-Up> :m .-2<CR>==
vnoremap <A-Up> :m '<-2<CR>gv=gv
inoremap <A-Up> <Esc>:m .-2<CR>==gi

" Move selected lines down (alt-down)
nnoremap <A-Down> :m .+1<CR>==
vnoremap <A-Down> :m '>+1<CR>gv=gv
inoremap <A-Down> <Esc>:m .+1<CR>==gi

"TODO fix
" Undo (ctrl-z)
"nnoremap <C-z> u
"inoremap <C-z> <C-O>u

"TODO fix
" Redo (ctrl-shft-z)
"nnoremap <C-S-z> <C-R>
"inoremap <C-S-z> <C-O><C-R>

" Delete line (ctrl-d)
nnoremap <C-d> dd
vnoremap <C-d> d
inoremap <C-d> <ESC>ddi

" Indent (tab)
nnoremap <Tab> >>
vnoremap <Tab> >gv

" Un-indent (shft-tab)
nnoremap <S-Tab> <<
vnoremap <S-Tab> <gv
inoremap <S-Tab> <C-D>

" Toggle tag bar (f8)
nmap <F8> :TagbarToggle<CR>

" Misc
nnoremap <expr> <Left> col(".") > 1 ? 'h' : '<Left>l'

"TODO determine source of other escape-key mapping
"inoremap <Esc> <Right><Esc>

