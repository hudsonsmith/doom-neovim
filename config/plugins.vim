" ======================================
" => Vim-Plug Plugins.
" ======================================

call plug#begin('~/.config/nvim/plugins/')

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'glepnir/dashboard-nvim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'romgrk/doom-one.vim'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/git-messenger.vim'
"Plug 'jmcantrell/vim-virtualenv'

"let g:virtualenv_auto_activate = 1

call plug#end()
