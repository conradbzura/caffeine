" Find prompt (ctrl-f)
noremap <C-f> :promptfind<CR>
vnoremap <C-f> :promptfind<CR>
onoremap <C-f> <C-C>:promptfind<CR>
inoremap <C-f> <C-O>:promptfind<CR>
cnoremap <C-f> <C-C>:promptfind<CR>

" Find & replace prompt (ctrl-shft-f)
noremap <C-S-f> :promptrepl<CR>
vnoremap <C-S-f> :promptrepl<CR>
onoremap <C-S-f> <C-C>:promptrepl<CR>
inoremap <C-S-f> <C-O>:promptrepl<CR>
cnoremap <C-S-f> <C-C>:promptrepl<CR>

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
vnoremap <C-c> "+y

" Paste (ctrl-v)
map <C-v> "+gP
cmap <C-v> <C-R>+
exe 'inoremap <script>  <C-v> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script>  <C-v> '       . paste#paste_cmd['v']

" Move selected lines up (alt-up)
nnoremap <A-Up> :m .-2<CR>==
vnoremap <A-Up> :m '<-2<CR>gv=gv
inoremap <A-Up> <Esc>:m .-2<CR>==gi

" Move selected lines down (alt-down)
nnoremap <A-Down> :m .+1<CR>==
vnoremap <A-Down> :m '>+1<CR>gv=gv
inoremap <A-Down> <Esc>:m .+1<CR>==gi

" Undo (ctrl-z)
nnoremap <C-z> u
inoremap <C-z> <C-O>u

" Redo (ctrl-shft-z)
nnoremap <C-S-z> <C-R>
inoremap <C-S-z> <C-O><C-R>

" Delete line (ctrl-d)
nnoremap <C-d> dd
inoremap <C-d> <ESC>ddi

" Indent (tab)
nnoremap <Tab> >>
vnoremap <Tab> >gv

" Un-indent (shft-tab)
nnoremap <S-Tab> <<
vnoremap <S-Tab> <gv
inoremap <S-Tab> <C-D>

" camelCase and PascalCase

" Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
let g:camelchar = "A-Z0-9.,;:{([`'\""
nnoremap <silent><C-Left> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-Right> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
snoremap <silent><C-S-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
snoremap <silent><C-S-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o 
vnoremap <silent><C-S-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-S-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o 
