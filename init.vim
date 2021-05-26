if has('nvim')
    call plug#begin(stdpath('data') . '/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

if has('nvim')
    runtime firenvim.vim
    Plug 'ThePrimeagen/vim-be-good'
endif

" Surround an object with a character
Plug 'tpope/vim-surround'

" Comments with gc
Plug 'tpope/vim-commentary'

" Highlight possible motions
Plug 'easymotion/vim-easymotion'
map gs <Plug>(easymotion-prefix)

" s__ jump to 2 characters
" Example: dz12, dx12, | signals the cursor position
"
"      z →  12   |ah123 → 23
"    ↗
" d
"    ↘
"      x →  12   |ah123 → 123

Plug 'justinmk/vim-sneak'
" let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " Use same confing as ignorecase/smartcase

onoremap <silent> z :<c-u>call sneak#wrap(v:operator,   2, 0, 3, 1)<cr>
onoremap <silent> x :<c-u>call sneak#wrap(v:operator,   2, 0, 0, 1)<cr>
onoremap <silent> Z :<c-u>call sneak#wrap(v:operator,   2, 1, 3, 1)<cr>
onoremap <silent> X :<c-u>call sneak#wrap(v:operator,   2, 1, 0, 1)<cr>


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

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Go to parent directories until there is an .git directory
Plug 'airblade/vim-rooter'

runtime lang.vim
runtime jumphl.vim
DoJumpHl 

runtime yinote.vim

Plug 'patstockwell/vim-monokai-tasty'

Plug 'ActivityWatch/aw-watcher-vim'

call plug#end()

set nocompatible " No compatibility with vi

" Remap escape
inoremap jk <Esc>

syntax enable " enable syntax processing
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Bidirectional integration with system clipboard
set clipboard=unnamedplus
:vnoremap y "+y
set mouse=a " Use mouse

set ignorecase " ignore case when searching
set smartcase " match case when there is an upercase letter
" escape disables highlighting of current match
map <silent> <esc> :nohl <cr>


if has('nvim')
    set inccommand=nosplit " Live preview of replaced text
endif

" Y goes to the end of line
map Y y$
set number relativenumber " Hybrid numbers

if has('nvim')
    autocmd TermOpen * setlocal nonumber norelativenumber " Disable relative number in terminal
endif

" Tabs
" https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " number of spaces per level of indentation
set expandtab " expand tabs into spaces
set smartindent " insert indent automatically on new line

" Different tab/space stops"
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype sql setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

