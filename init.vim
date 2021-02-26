call plug#begin(stdpath('data') . '/plugged')

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'ThePrimeagen/vim-be-good'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

" Highlight possible motions
Plug 'easymotion/vim-easymotion'
map gs <Plug>(easymotion-prefix)

" s__ jump to 2 characters
Plug 'justinmk/vim-sneak'

" Highlight possible f,t jumps
Plug 'unblevable/quick-scope'

Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 100

" Smooth C-D,U,B,F movements
Plug 'psliwka/vim-smoothie'

" jump with ; , after f,t across lines
Plug 'rhysd/clever-f.vim'
let g:clever_f_fix_key_direction = 1
let g:clever_f_timeout_ms = 0.01
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

call plug#end()

" No compatibility with vi
set nocompatible

" Bidirectional integration with system clipboard
set clipboard=unnamedplus
:vnoremap y "+y
" Use mouse
set mouse=a

" Hybrid numbers
set number relativenumber

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Y goes to the end of line
:map Y y$

