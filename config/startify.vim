function! s:list_commits()
    let git = 'git -C '. getcwd()
    let commits = systemlist(git .' log --oneline | head -n10')
    let git = 'G'. git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Recently Opened']            },
      \ { 'type': 'dir',       'header': ['   Files in Directory '. getcwd()] },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ { 'type': function('s:list_commits'), 'header': ['   Commits'] },
      \ ]

let g:startify_commands = [
    \ ':help reference',
    \ ['Vim Reference', 'h ref'],
    \ {'h': 'h ref'},
    \ {'t': ['Todo List', 'edit ~/.config/nvim/todo/index.md']},
    \ ]

nnoremap <silent><Leader>nn :Startify<CR>
