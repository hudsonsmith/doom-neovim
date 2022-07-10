" ======================================
" => File specific settings.
" ======================================

" autocmd FileType sh setlocal ts=4
autocmd FileType vim setlocal ts=4 sts=4 sw=4 expandtab autoindent fileformat=unix
autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab autoindent fileformat=unix


au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set wrapmargin=2
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile, BufRead *.by
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set wrapmargin=2
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set filetype=python


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType js setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=4 sts=4 sw=4 expandtab
