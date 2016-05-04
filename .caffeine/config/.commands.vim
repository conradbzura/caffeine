" Find prompt
:command! -nargs=0 -complete=file PromptFind :call _PromptFind()

" Find & replace prompt
:command! -nargs=0 -complete=file PromptFindAndReplace :call _PromptFindAndReplace()
