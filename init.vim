call plug#begin(stdpath('data') . '/plugged')

runtime firenvim.vim

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

runtime lang.vim
runtime jumphl.vim
DoJumpHl 

Plug 'patstockwell/vim-monokai-tasty'

Plug 'ActivityWatch/aw-watcher-vim'

call plug#end()

" No compatibility with vi
set nocompatible

" Remap escape
inoremap jk <Esc>

syntax enable " enable syntax processing
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Bidirectional integration with system clipboard
set clipboard=unnamedplus
:vnoremap y "+y
" Use mouse
set mouse=a

" ignore case when searching
set ignorecase
" match case when there is an upercase letter
set smartcase
" escape disables highlighting of current match
map <esc> :nohl <cr>

" Hybrid numbers
set number relativenumber

" Tabs
" https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " number of spaces per level of indentation
set expandtab " expand tabs into spaces

" Different tab/space stops"
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype sql setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Y goes to the end of line
:map Y y$


