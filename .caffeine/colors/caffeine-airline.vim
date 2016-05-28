let g:airline#themes#caffeine#palette = {}

let s:N1 = [ '#ffffff' , '#015669' , 255 , 27  ]
let s:N2 = [ '#004454' , '#3a95aa' , 18  , 45  ]
let s:N3 = [ '#015669' , '#6cc0d4' , 27  , 159 ]
let g:airline#themes#caffeine#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#caffeine#palette.normal_modified = {
      \ 'airline_c': [ '#b77600' , '#f2c97f' , 160     , 224     , ''     ] ,
      \ }


let s:I1 = [ '#ffffff' , '#0a5133' , 255 , 29  ]
let s:I2 = [ '#084028' , '#598a6e' , 22  , 42  ]
let s:I3 = [ '#0a5133' , '#90b798' , 23  , 156 ]
let g:airline#themes#caffeine#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#caffeine#palette.insert_modified = {
      \ 'airline_c': [ '#b77600' , '#f2c97f' , 160     , 224     , ''     ] ,
      \ }
let g:airline#themes#caffeine#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }


let g:airline#themes#caffeine#palette.replace = copy(g:airline#themes#caffeine#palette.insert)
let g:airline#themes#caffeine#palette.replace.airline_a = [ s:I2[0]   , '#ff0000' , s:I1[2] , 196     , ''     ]
let g:airline#themes#caffeine#palette.replace_modified = g:airline#themes#caffeine#palette.insert_modified


let s:V1 = [ '#ffffff' , '#78291e' , 255 , 202 ]
let s:V2 = [ '#4f1912' , '#b14e42' , 52  , 214 ]
let s:V3 = [ '#78291e' , '#ff7c6b' , 166 , 228 ]
let g:airline#themes#caffeine#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#caffeine#palette.visual_modified = {
      \ 'airline_c': [ '#b77600' , '#f2c97f' , 160     , 224     , ''     ] ,
      \ }


let s:IA1 = [ '#666666' , '#b2b2b2' , 242 , 249 , '' ]
let s:IA2 = [ '#8a8a8a' , '#d0d0d0' , 245 , 252 , '' ]
let s:IA3 = [ '#a8a8a8' , '#ffffff' , 248 , 255 , '' ]
let g:airline#themes#caffeine#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#caffeine#palette.inactive_modified = {
      \ 'airline_c': [ '#df0000' , ''        , 160     , ''      , ''     ] ,
      \ }


