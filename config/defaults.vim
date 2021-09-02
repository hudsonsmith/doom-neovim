" ======================================
" => Doom Defaults.
" ======================================

" Mapleader
let mapleader = " "

" Ignore case when searching.
set ignorecase

" Enable recursive searching. Uncomment it to disable.
set path+=**


" Highlight searches
set hlsearch

" Highlight dynamically as pattern is typed.
set incsearch

" Folding code.
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Show tabs even if there is one tab open.
set showtabline=2

" Use numbered lines.
:set number relativenumber

" Add support for gui colors in vim.
if (has('termguicolors'))
  set termguicolors
endif


" Enable wildmenu.
set wildmenu

" Use advanced vim.
set nocompatible

" Enable Syntax
syntax enable

" Enable filtype plugin.
filetype plugin on

" Move lines up and down with Shift + K or Shift + J
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+2<CR>gv=gv

" Activate nerdtree easily.
nnoremap <silent> <expr> <Leader>e g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" Make new tabs.
noremap <silent><C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Highlight the cursorline.
hi CursorLine guibg=#21252A
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline
