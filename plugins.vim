call plug#begin('~/.vim/plugged')

"-- general
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-sleuth'
Plug 'rhysd/committia.vim'
Plug 'neoclide/vim-easygit'

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
Plug 'dense-analysis/ale'

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
Plug 'chrisbra/csv.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'Raimondi/delimitMate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'

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

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_guide_size = 1

let g:easygit_enable_command = 1

let g:lsp_diagnostics_enabled = 0
let g:lsp_virtual_text_enabled = 0

let g:ale_lint_delay = 1000
let g:ale_fixers = {
\    '*': ['trim_whitespace'],
\   'typescript': ['prettier', 'tslint'],
\}
let g:ale_fix_on_save = 1

"-- mappings

" fzf file search
nnoremap <leader><leader> :Files<CR>
" open file browser
nnoremap <leader>o :Lexplore<CR>
