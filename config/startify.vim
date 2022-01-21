let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Recently Opened']            },
      \ { 'type': 'dir',       'header': ['   Files in Directory'. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ { 'type': 'bookmarks', 'header': ['   Commits'] }
      \ ]

function! s:list_commits()
    let git = 'git -C ~/repo'
    let commits = systemlist(git .' log --oneline | head -n10')
    let git = 'G'. git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_bookmarks = [
        \ {"t": ["Todo List", "edit ~/.nvim/config/todo/index.md"]}
        \ ]

nnoremap <silent><Leader>nn :startify<CR>

