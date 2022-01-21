function! s:list_commits()
    let git = "git log --oneline --graph --decorate --all --date=relative --format=format:'%h %Cblue(%ad)%Creset %Cgreen%s%Creset %Cred- %an%Creset %Cblue%d%Cblue' "
    let commits = systemlist(git .' log --oneline | head -n10')
    let git = 'G'. git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Recently Opened']            },
      \ { 'type': 'dir',       'header': ['   Files in Directory'. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ { 'type': function('s:list_commits'), 'header': ['   Commits'] },
      \ ]

nnoremap <silent><Leader>nn :startify<CR>
