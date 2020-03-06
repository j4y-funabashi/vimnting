call plug#begin('~/.vim/plugged')

"-- general
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-sleuth'
Plug 'rhysd/committia.vim'

"-- fuzzy
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'

"-- LSP
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'

"-- Lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'ekalinin/Dockerfile.vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'rhysd/vim-gfm-syntax'
Plug 'StanAngeloff/php.vim'
Plug 'chrisbra/csv.vim'
Plug 'lifepillar/pgsql.vim'

call plug#end()


"-- Plugin settings
set background=dark
set termguicolors
colorscheme rakr

let g:deoplete#enable_at_startup = 1

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4

"-- mappings
nnoremap <leader><leader> :Files<CR>
