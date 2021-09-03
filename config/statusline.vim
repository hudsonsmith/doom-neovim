hi User1 guifg=#A9A1E1 guibg=#1C1F24
hi User2 guifg=#98BE65 guibg=#1C1F24

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline+=%#PmenuSel#
set statusline+=\  
set statusline+=%#TablineFill#
set statusline+=\  
set statusline+=\ %F
set statusline+=\  
set statusline+=%1*
set statusline+=%{&modified?'':''}
set statusline+=%=
set statusline+=%2*
set statusline+=%{StatuslineGit()}
set statusline+=%1*
set statusline+=\  
set statusline+=\  
set statusline+=
set statusline+=\  
set statusline+=\ doom
set statusline+=\ neovim
set statusline+=\  
set statusline+=\  
set statusline+=%*
