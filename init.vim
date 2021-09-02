" =================     ===============     ===============   ========  ========
" \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
" ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
" || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
" ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
" || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
" ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
" || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
" ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
" ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
" ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
" ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
" ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
" ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
" ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
" ||.=='    _-'                                                     `' |  /==.||
" =='    _-'                        N E O V I M                         \/   `==
" \   _-'                                                                `-_   /
"  `''                                                                      ``'

" Author: Hudson Smith
" => Yay! Evil! HAHAHAHAHAHA!!!!!!!!!

source ./config/custom.vim
source ./config/plugins.vim
source ./config/defaults.vim




" ======================================
" => Key mappings.
" ======================================

" FZF mappings.
nnoremap <silent> <C-f> :Files<CR>

nnoremap <Leader>vrc :tabedit ~/.vimrc<CR>

nnoremap <Leader>f :files<CR>

nnoremap <Leader>g :Git<CR>


" ======================================
" => Tab settings.
" ======================================

" noremap <silent>-- :tabn<CR>
" noremap <silent>++ :tabp<CR>
" This doesn't work.
" inoremap <C-tab>   <Esc>:tabn<CR>i
" inoremap <C-S-tab> <Esc>:tabp<CR>i


" ===========================================
" => Disable Page-Up/Down, and Home/end Keys.
" ===========================================

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


" ======================================
" => Managing splits in vim.
" ======================================

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



" Set the colorscheme.
" let g:material_theme_style = 'palenight'
" let g:airline_theme = 'material'
" let g:material_terminal_italics = 1
" colorscheme material

colorscheme doom-one

let $FZF_DEFAULT_OPTS='--reverse'

" Ale linting settings.
let g:ale_linters = {'python': ['mypy', 'flake8']}
let g:ale_fixers = {'python': ['black', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1


" ======================================
" => Startify Settings
" ======================================

let g:dashboard_default_executive ="fzf"

let g:startify_fortune_use_unicode = 1

let g:startify_bookmarks = [
    \ { "v": "~/.vimrc" },
    \ { "b": "~/.bashrc" },
    \ ]

" let g:startify_lists = [
"     \ { "header": ["    Bookmarks"], "type": "bookmarks" },
"     \ { "header": ["    MRU"], "type": "files" },
"     \ { "header": ["    MRU". getcwd()], "type": "dir" },
"     \ ]

function! MochiVimMenu()
    return [
        \ { "line": " Settings", "path": "~/.vimrc" },
        \ ]
endfunction


let g:startify_lists = [
    \ { "header": ["    Mochi Vim"], "type": function("MochiVimMenu") },
    \ { "header": ["    MRU"], "type": "files" },
    \ { "header": ["    MRU". getcwd()], "type": "dir" },
    \ ]

" let g:startify_custom_header = [
"     \ "__      ___           ",
"     \ "\ \    / (_)          ",
"     \ " \ \  / / _ _ __ ___  ",
"     \ "  \ \/ / | | '_ ` _ \ ",
"     \ "   \  /  | | | | | | |",
"     \ "    \/   |_|_| |_| |_|",
"     \ ]
                       
"let g:dashboard_custom_header = [
"            \ "",
"            \ "",
"            \ "    ███╗   ███╗ ██████╗  ██████╗██╗  ██╗██╗    ██╗   ██╗██╗███╗   ███╗",
"            \ "    ████╗ ████║██╔═══██╗██╔════╝██║  ██║██║    ██║   ██║██║████╗ ████║",
"            \ "    ██╔████╔██║██║   ██║██║     ███████║██║    ██║   ██║██║██╔████╔██║",
"            \ "    ██║╚██╔╝██║██║   ██║██║     ██╔══██║██║    ╚██╗ ██╔╝██║██║╚██╔╝██║",
"            \ "    ██║ ╚═╝ ██║╚██████╔╝╚██████╗██║  ██║██║     ╚████╔╝ ██║██║ ╚═╝ ██║",
"            \ "    ╚═╝     ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝",
"            \ ]

"let g:dashboard_custom_header = [
"            \ "[48;5;0m                                              [38;2;167;201;171m",
"            \ "[38;2;31;107;152m███████████           [38;2;57;108;63m█████[38;2;167;201;171m      ██",
"            \ "[38;2;34;115;163m███████████             [38;2;61;116;68m█████ ",
"            \ "[38;2;36;122;174m███████[48;5;0m██[38;2;20;69;110m[38;2;122;187;225m███████ ███[38;2;65;124;72m████████ [38;2;152;192;157m███   ███████",
"            \ "[38;2;38;130;184m█████████[38;2;132;191;226m███████[48;5;0m ████[38;2;69;132;76m████████ [38;2;160;196;164m█████ ██████████████",
"            \ "[38;2;40;138;195m█████████[38;2;142;196;228m█████[48;5;0m[38;2;20;69;110m██[38;2;142;196;228m██████[38;2;73;140;81m███████ [38;2;167;201;171m█████ █████ ████ █████",
"            \ "[38;2;43;145;206m███████████[38;2;151;200;229m█████████████████[38;2;77;147;86m██████ [38;2;175;205;179m█████ █████ ████ █████",
"            \ "[38;2;45;153;217m██████  ███ [38;2;160;204;231m█████████████████ [38;2;81;155;90m████ [38;2;183;209;186m█████ █████ ████ ██████",
"            \ "[38;2;20;69;110m██████   ██  ███████████████   [38;2;46;78;42m██ █████████████████",
"            \ "[48;2;20;20;40m [38;2;11;39;63m██████   ██  ███████████████   [38;2;25;42;23m██ █████████████████ [48;5;0m"
"            \ ]

let g:dashboard_custom_header = [
            \"=================     ===============     ===============   ========  ========",
            \"\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
            \"||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
            \"|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
            \"||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
            \"|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
            \"||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
            \"|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
            \"||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
            \"||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
            \"||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
            \"||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
            \"||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
            \"||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
            \"||   .=='    _-'          '-__\\._-'         '-_./__-'         `' |. /|  |   ||",
            \"||.=='    _-'                                                     `' |  /==.||",
            \"=='    _-'                        N E O V I M                         \\/   `==",
            \"\\   _-'                                                                `-_   /",
            \"`''                                                                      ``'",
            \ ]
                                                                   


" Open Dashboard.
nnoremap <c-n> :Dashboard<CR>


" ======================================
" => Color customizations.
" ======================================

" Hide Tildas.
" hi NonText guifg=#292D3E

hi DashboardHeader guifg=#474D53
hi DashboardCenter guifg=#51AFEF
hi DashboardShortcut guifg=#51AFEF
hi DashboardFooter guifg=#474D53

let g:airline#extensions#tabline#keymap_ignored_filetypes =
        \ ['nerdtree', 'dashboard']
