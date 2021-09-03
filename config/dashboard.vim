" Create custom shortcuts for the Neovim Dashboard.
" " 

" Dashboard Shortcuts.
nmap <Leader>ss  :<C-u>SessionSave<CR>
nmap <Leader>ls :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>rf :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashBoardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>bb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>nf :DashboardNewFile<CR>

let packages = len(globpath("~/.config/nvim/plugins/", "*", 0, 1))
let g:dashboard_custom_footer = ['  Doom Neovim loaded '..packages..' plugins']

let g:dashboard_custom_shortcut = {
	\ "last_session": "SPC l s",
	\ "find_history": "SPC r f",
	\ "find_file": "SPC f f",
	\ "new_file": "SPC n f",
	\ "change_colorscheme": 'SPC t c',
	\ "find_word": 'SPC f a',
	\ "book_marks": 'SPC b b'
\ }

" Open Dashboard.
nnoremap <silent><Leader>n :Dashboard<CR>

" Dashboard Session Path.
let g:dashboard_session_directory = "~/.config/nvim/sessions/"



autocmd! FileType dashboard set laststatus=0 showtabline=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showtabline=2 showmode ruler
