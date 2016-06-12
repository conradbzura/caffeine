" Vim color file
" Maintainer:   Conrad Bzura <conradbzura@gmail.com>

let g:colors_name="caffeine"
if version > 580
    hi clear
    if exists("syntax_on")
            syntax reset
    endif
endif


hi Cursor   	guibg=#e59400   gui=none
hi VertSplit	guifg=#d1d2d2   guibg=#ffffff   gui=none
hi Folded	    guifg=#c6c6c6   guibg=#ffffff  
hi FoldColumn	guifg=#c6c6c6   guibg=#ffffff
hi IncSearch	guifg=#ffffff   guibg=#141719
hi MoreMsg	    guifg=#71141c
hi NonText	    guifg=#c6c6c6   guibg=#ffffff
hi Question	    guifg=#03a7c7
hi SpecialKey	guifg=#c46270
hi Title	    guifg=#444444
hi WarningMsg	guifg=#e59400
hi CursorLine   guibg=#ffffff
hi CursorColumn guibg=#ffffff
hi CursorLineNr guifg=#e59400   guibg=#ffffff   gui=bold
hi LineNr       guifg=#c6c6c6   guibg=#ffffff

" syntax highlighting groups
hi Normal	    guifg=#444444   guibg=#ffffff
hi Visual       guibg=#fff6e6
hi Search       guifg=#e59400   gui=bold 
hi Comment	    guifg=#888888   gui=italic
hi Constant	    guifg=#0f8a6b
hi Identifier	guifg=#2f6742
hi Statement	guifg=#B14E42
hi PreProc	    guifg=#0f8a6b   gui=bold
hi Type		    guifg=#02768D
hi Special	    guifg=#77a5b2
hi Ignore 	    guifg=#c6c6c6
hi Todo		    guifg=#7e8284   guibg=#ffffff   gui=italic,bold
hi String       guifg=#28bd73 
hi Character    guifg=#28bd73
hi MatchParen   guifg=#e59400   guibg=#ffffff   gui=bold
syntax match Numeral "\d"
"hi Numeral guibg=#ffffff guifg=#27a191
"hi Error			

hi link String  	Constant
hi link Character	Constant
hi link Number	    Constant
hi link Boolean 	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	    Statement
hi link Exception	Statement
hi link Include	    PreProc
hi link Define	    PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link Structure	Type
hi link Typedef	    Type
hi link Tag		    Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Debug		Special

