" ======================================
" => Vim-Plug Plugins.
" ======================================

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'glepnir/dashboard-nvim'
Plug 'ycm-core/YouCompleteMe'
Plug 'romgrk/doom-one.vim'

call plug#end()
