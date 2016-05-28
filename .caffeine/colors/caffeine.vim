" Vim color file
" Maintainer:   Conrad Bzura <conradbzura@gmail.com>

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="caffeine"

hi Normal	guifg=#141719 guibg=#ffffff

" highlight groups
hi Cursor	guibg=#141719 guifg=#ffffff
"hi CursorIM	
"hi Directory	
"hi DiffAdd				
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
hi VertSplit	guibg=#e9eaea guifg=#e9eaea gui=none
hi Folded	guibg=#e9eaea guifg=#141719 
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=#ffffff guibg=#141719
"hi LineNr				
hi MoreMsg	guifg=#71141c

hi NonText	guifg=#d1d2d2 guibg=#ffffff
hi Question	guifg=springgreen
"#f7deb2 - yellow background
hi Search	guibg=#ffffff guifg=#e59400 gui=bold 
hi SpecialKey	guifg=yellowgreen
hi Title	guifg=indianred
hi Visual	gui=none guifg=#141719 guibg=#f8f8f8
"hi VisualNOS	
hi WarningMsg	guifg=#ce8500
"hi WildMenu	
"hi Menu				
hi Scrollbar guibg=#ffffff
"hi Tooltip		
hi CursorLine guibg=#fcfcfc
hi CursorLineNr guifg=#d0d1d1 guibg=#fcfcfc gui=bold
hi LineNr guifg=#d1d2d2 guibg=#ffffff

" syntax highlighting groups
hi Comment	 guifg=#7e8284
hi Constant	 guifg=#be696e
hi Identifier	 guifg=#2f6742
hi Statement	 guifg=#2f683c
hi PreProc	 guifg=#71141c gui=bold
hi Type		 guifg=#2f5e79
hi Special	 guifg=#77a5b2
"hi Underlined	
hi Ignore 	 guifg=grey40
"hi Error			
hi Todo		 guifg=#ce8500 guibg=#ffffff
hi String guifg=#71141c guibg=#ffffff
hi MatchParen guibg=#ffffff guifg=#e59400 gui=bold
syntax match Numeral "\d"
"hi Numeral guibg=#ffffff guifg=#27a191

" color terminal definitions
hi SpecialKey    ctermfg=darkgreen
hi NonText       cterm=bold ctermfg=darkblue
hi Directory     ctermfg=darkcyan
hi ErrorMsg      cterm=bold ctermfg=7 ctermbg=1
hi IncSearch     cterm=NONE ctermfg=yellow ctermbg=green
hi Search        cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg       ctermfg=darkgreen
hi ModeMsg       cterm=NONE ctermfg=brown
hi LineNr        ctermfg=3
hi Question      ctermfg=green
hi StatusLine    cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit     cterm=reverse
hi Title         ctermfg=5
hi Visual        cterm=reverse
hi VisualNOS     cterm=bold,underline
hi WarningMsg    ctermfg=1
hi WildMenu      ctermfg=0 ctermbg=3
hi Folded        ctermfg=darkgrey ctermbg=NONE
hi FoldColumn    ctermfg=darkgrey ctermbg=NONE
hi DiffAdd       ctermbg=4
hi DiffChange    ctermbg=5
hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
hi DiffText      cterm=bold ctermbg=1
hi Comment       ctermfg=darkcyan
hi Constant      ctermfg=brown
hi Special       ctermfg=5
hi Identifier    ctermfg=6
hi Statement     ctermfg=3
hi PreProc       ctermfg=5
hi Type          ctermfg=2
hi Underlined    cterm=underline ctermfg=5
hi Ignore        ctermfg=darkgrey
hi Error         cterm=bold ctermfg=7 ctermbg=1


"vim: sw=4

