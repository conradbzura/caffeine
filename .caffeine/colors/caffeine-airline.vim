let g:airline#themes#caffeine#palette = {}

" normal mode
let s:N1 = ['#ffffff', '#005A6C', '', '']
let s:N2 = ['#004454', '#3a95aa', '', '']
let s:N3 = ['#005A6C', '#6cc0d4', '', '']
let g:airline#themes#caffeine#palette.normal = 
    \airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#caffeine#palette.normal_modified = 
    \{'airline_c': s:N3}

" insert mode
let s:I1 = ['#ffffff', '#0a5240', '', '']
let s:I2 = ['#07362b', '#5a8c7f', '', '']
let s:I3 = ['#0a5240', '#99ccbf', '', '']
let g:airline#themes#caffeine#palette.insert = 
    \airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#caffeine#palette.insert_modified = 
    \{'airline_c': s:I3}

" visual mode
let s:V1 = ['#ffffff', '#78291e', '', '']
let s:V2 = ['#4f1912', '#b14e42', '', '']
let s:V3 = ['#78291e', '#ff7c6b', '', '']
let g:airline#themes#caffeine#palette.visual = 
    \airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#caffeine#palette.visual_modified = 
    \{'airline_c': s:V3}

" inactive mode
let s:IA1 = ['#666666', '#b2b2b2', '', '', '']
let s:IA2 = ['#8a8a8a', '#d0d0d0', '', '', '']
let s:IA3 = ['#a8a8a8', '#ffffff', '', '', '']
let g:airline#themes#caffeine#palette.inactive = 
    \airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#caffeine#palette.inactive_modified = 
    \{'airline_c': s:IA3}

" read-only symbol
let g:airline#themes#caffeine#palette.accents = 
    \{'red': ['#ffffff', '', '', '']}
