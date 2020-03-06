" ----- Required
if &compatible
  set nocompatible
endif

" ----- Leader
let g:mapleader="\<Space>"
let g:maplocalleader=';'

" ----- Load files
source ~/.config/nvim/base.vim
source ~/.config/nvim/plugins.vim
