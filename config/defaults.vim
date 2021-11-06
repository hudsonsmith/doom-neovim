" ======================================
" => Doom Defaults.
" ======================================

" Set the colorscheme as doom-one
colorscheme doom-one

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

" NERDTree show hidden files.
let NERDTreeShowHidden=1

" Make new tabs.
noremap <silent><C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

set splitbelow splitright

" Remap split navigation to CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split sizes easier.
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" Swap splits in vim.
map <Leader>r <C-w>r

" Change 2 split windows from vertical to horizontal or the other way around.
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Remove pipe symbol `|` from separators.
set fillchars+=vert:\ 

" Git mapping.
nnoremap <Leader>g :Git<CR>

" Disable Page Up and Down keys.
nnoremap <PageUp> :echo "Don't use the Page-Up/Down keys!"<CR>
nnoremap <PageDown> :echo "Don't use the Page-Up/Down keys!"<CR>

vmap <PageUp> <Nop>
vmap <PageDown> <Nop>

imap <PageUp> <Nop>
imap <PageDown> <Nop>

" Disable Home/End Keys.
nnoremap <home> :echo "Don't use the Home/End keys!"<CR>
nnoremap <end> :echo "Don't use the Home/End keys!"<CR>

vmap <PageUp> <Nop>
vmap <PageDown> <Nop>

imap <PageUp> <Nop>
imap <PageDown> <Nop>

let $FZF_DEFAULT_OPTS='--reverse'

" Ale linting settings.
let g:ale_linters = {'python': ['mypy', 'flake8']}
let g:ale_fixers = {'python': ['black', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1

" Allow easy switching between tabs.
nnoremap <tab> :tabnext<CR>
nnoremap <S-tab> :tabprevious<CR>
