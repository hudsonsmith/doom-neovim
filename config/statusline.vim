hi User1 guifg=#A9A1E1 guibg=#1C1F24
hi User2 guifg=#98BE65 guibg=#1C1F24
hi User3 guifg=#51AFEF guibg=#1C1F24

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! FileSize()
  let bytes = getfsize(expand('%:p'))
  if (bytes >= 1024)
    let kbytes = bytes / 1024
  endif
  if (exists('kbytes') && kbytes >= 1000)
    let mbytes = kbytes / 1000
  endif

  if bytes <= 0
    return ''
  endif

  if (exists('mbytes'))
    return '  ' . mbytes . 'MB'
  elseif (exists('kbytes'))
    return '  ' . kbytes . 'KB'
  else
    return '  ' . bytes . 'B'
  endif
endfunction


" For the blue line at the beginning.
set statusline+=%#PmenuSel#
set statusline+=\  
set statusline+=%#TablineFill#

" File Size
set statusline+=%1*
set statusline+=%{FileSize()}

" File name.
set statusline+=\  
set statusline+=\ %F
set statusline+=\  

" Notification Dot.
set statusline+=%1*
set statusline+=%{&modified?'':''}

" Line Numbers.
set statusline+=\  
set statusline+=\  
set statusline+=%3*
set statusline+=%l
set statusline+=/
set statusline+=%L

" Divider.
set statusline+=%=

" Filetype.
set statusline+=%3*
set statusline+=
set statusline+=\  
set statusline+=\  
set statusline+=%y
set statusline+=\  
set statusline+=\  

" Git branch.
set statusline+=%2*
set statusline+=%{StatuslineGit()}

" Doom Neovim badge.
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
