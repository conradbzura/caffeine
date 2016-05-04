" Find prompt (ctrl-f)
noremap <C-f> :PromptFind<CR>
vnoremap <C-f> :PromptFind<CR>
onoremap <C-f> <C-C>:PromptFind<CR>
inoremap <C-f> <C-O>:PromptFind<CR>
cnoremap <C-f> <C-C>:PromptFind<CR>

" Find & replace prompt (ctrl-shft-f)
noremap <C-S-f> :PromptFindAndReplace<CR>
vnoremap <C-S-f> :PromptFindAndReplace<CR>
onoremap <C-S-f> <C-C>:PromptFindAndReplace<CR>
inoremap <C-S-f> <C-O>:PromptFindAndReplace<CR>
cnoremap <C-S-f> <C-C>:PromptFindAndReplace<CR>

" Select all (ctrl-a)
nnoremap <C-a> ggVG

" Cut (ctrl-x)
vnoremap <C-x> "+x

" Copy (ctrl-c)
vnoremap <C-c> "+y

" Paste (ctrl-v)
map <C-v> "+gP
cmap <C-v> <C-R>+
exe 'inoremap <script>  <C-v> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script>  <C-v> '       . paste#paste_cmd['v']

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

