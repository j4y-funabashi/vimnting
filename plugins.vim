call plug#begin('~/.vim/plugged')

"-- general
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-sleuth'
Plug 'rhysd/committia.vim'
Plug 'neoclide/vim-easygit'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'

"-- fuzzy
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dkprice/vim-easygrep'

"-- LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"-- COC
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-go', {'do': 'yarn install --frozen-lockfile'}

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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tyru/caw.vim'
Plug 'joaohkfaria/vim-jest-snippets'

call plug#end()


"-- Plugin settings
set background=dark
set termguicolors
colorscheme gruvbox

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4

let g:easygit_enable_command = 1

let g:go_fmt_command = "goimports"

" vim-easygrep config.
let g:EasyGrepRoot="repository"
let g:EasyGrepRecursive=1
let g:EasyGrepCommand='rg'

let g:airline_powerline_fonts = 1

"-- mappings

" fzf file search
nnoremap <leader><leader> :Files<CR>
" open file browser
nnoremap <leader>aa :Fern . -reveal=%<CR>
" markdown date heading
nnoremap <leader>dd o<ESC>"=strftime('# %F %T ')<CR>P

command! -nargs=0 Prettier :CocCommand prettier.formatFile
