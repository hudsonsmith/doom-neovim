set statusline+=%#PmenuSel#
set statusline+=" "
set statusline+=\ %#TablineFill#
set statusline+=\ %F
set statusline+=%{&modified?'[+]':''}
set statusline+=%=
set statusline+=%#Keyword#
set statusline+=doom
set statusline+=\ neovim
set statusline+=%*
